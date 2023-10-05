<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\HomeController;
use App\Http\Controllers\admin\AdminLoginController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\SubCategoryController;
use App\Http\Controllers\admin\ProductController;
use App\Http\Controllers\admin\TempImagesController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\admin\BrandController;
use Illuminate\Http\Request;

// Frontend Routes
Route::get('/', [FrontController::class, 'index'])->name('front.home');

Route::get('/profile', [AuthController::class, 'profile'])->name('front.account.profile');

// Registration Routes 
 
 


// Login Routes
 
Route::post('/login', [AuthController::class, 'authenticate'])->name('account.authenticate');
Route::get('/logout', [AuthController::class, 'logout'])->name('front.account.logout');

 
    Route::group(['middleware' => 'guest'],function(){
        
        Route::get('/login', [AuthController::class, 'login'])->name('front.account.login');
        Route::get('/register', [AuthController::class, 'register'])->name('front.account.register');
        Route::post('/process-register', [AuthController::class, 'processRegister'])->name('front.account.processRegister');
    
    });
 

    Route::group(['middleware' => 'auth'],function(){
       
    });

     

    
 

//change password
Route::get('/change-password', [AuthController::class, 'showChangePasswordForm'])->name('front.account.changePassword');  
Route::post('/process-change-password', [AuthController::class, 'changePassword'])->name('front.account.processChangePassword');  


// Admin Routes
Route::prefix('admin')->group(function () {

    // Admin Authentication Routes
    Route::middleware('admin.guest')->group(function () {
        Route::get('/login', [AdminLoginController::class, 'index'])->name('admin.login');
        Route::post('/authenticate', [AdminLoginController::class, 'authenticate'])->name('admin.authenticate');
    });

    // Authenticated Admin Routes
    Route::middleware('admin.auth')->group(function () {

        // Dashboard
        Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.dashboard');
        Route::get('/logout', [HomeController::class, 'logout'])->name('admin.logout');

        // Category Routes
        Route::get('/categories', [CategoryController::class, 'index'])->name('categories.index');
        Route::get('/categories/create', [CategoryController::class, 'create'])->name('categories.create');
        Route::post('/categories', [CategoryController::class, 'store'])->name('categories.store');
        Route::get('/categories/{category}/edit', [CategoryController::class, 'edit'])->name('categories.edit');
        Route::put('/categories/{category}', [CategoryController::class, 'update'])->name('categories.update');
        Route::delete('/categories/{category}', [CategoryController::class, 'destroy'])->name('categories.delete');

        // Sub-Category Routes
        Route::get('/sub-categories/create', [SubCategoryController::class, 'create'])->name('sub-categories.create');
        Route::post('/sub-categories', [SubCategoryController::class, 'store'])->name('sub-categories.store');
        Route::get('/sub-categories', [SubCategoryController::class, 'index'])->name('sub-categories.index');
        Route::get('/sub-categories/{subCategory}/edit', [SubCategoryController::class, 'edit'])->name('sub-categories.edit');
        Route::put('/sub-categories/{subCategory}', [SubCategoryController::class, 'update'])->name('sub-categories.update');
        Route::delete('/sub-categories/{subCategory}', [SubCategoryController::class, 'destroy'])->name('sub-categories.delete');

        //Brand routes
        Route::get('/brands', [BrandController::class, 'index'])->name('brands.index');
        Route::get('/brands/create', [BrandController::class, 'create'])->name('brands.create');
        Route::post('/brands', [BrandController::class, 'store'])->name('brands.store');
        Route::get('/brands/{brand}/edit', [BrandController::class, 'edit'])->name('brands.edit');
        Route::put('/brands/{brand}', [BrandController::class, 'update'])->name('brands.update');
        
        // Temporary Images Route
        Route::post('/upload-temp-image', [TempImagesController::class, 'create'])->name('temp-images.create');

        // Product Routes
        Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');

        // Slug Generation Route
        Route::get('/getSlug', function (Request $request) {
            $slug = '';
            if (!empty($request->title)) {
                $slug = Str::slug($request->title);
            }

            return response()->json([
                'status' => true,
                'slug' => $slug,
            ]);
        })->name('getSlug');
    });
});
