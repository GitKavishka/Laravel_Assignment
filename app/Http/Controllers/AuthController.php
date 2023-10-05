<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login()
    {
        return view('front.account.login');
    }

    public function register()
    {
        return view('front.account.register');
    }

    public function processRegister(Request $request)
    {  
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:5',
            'phone' => 'required',
        ]);

        if ($validator->passes()) {
            $user = new User;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->phone = $request->phone;  
            $user->password = Hash::make($request->password);
            $user->role = 0;
            $user->save();

            session()->flash('success', 'You have been registered successfully.');

            return response()->json(['status' => true], 200);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ], 422);
        }
    }

    public function authenticate(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->passes()) {
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password], $request->get('remember'))) {
                $user = Auth::user();

                if ($user && $user->role != 1) {
                    return redirect()->route('front.account.profile');
                }else{
                    return redirect()->route('front.account.login')
                    ->with('error', 'Unauthorized access.');
                }
                
            } else {
                return redirect()->route('front.account.login')
                    ->withInput($request->only('email'))
                    ->with('error', 'Either email or password is incorrect.');
            }
        } else {
            return redirect()->route('front.account.login')
                ->withErrors($validator)
                ->withInput($request->only('email'));
        }
    }

    public function profile()
    {
        return view('front.account.login');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('front.account.login')
            ->with('success', 'Successfully logged out!');
    }

    public function showChangePasswordForm()
    {
        return view('front.account.change-password');
    }

    public function changePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'old_password' => 'required',
            'new_password' => 'required|min:5',
            'confirm_password' => 'required|same:new_password',
        ]);

        if ($validator->passes()) {
            $user = User::find(Auth::user()->id);

            if (!Hash::check($request->old_password, $user->password)) {
                session()->flash('error', 'Your old password is incorrect, please try again');
                return response()->json(['status' => false]);
            }

            $user->password = Hash::make($request->new_password);
            $user->save();

            session()->flash('success', 'You have successfully changed your password');
            return response()->json(['status' => true]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }
}
