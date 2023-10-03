<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
//use App\Models\Brand;

class ProductController extends Controller
{
    public function create(){
        $data = [];
        $categories = Category::orderBy('name','ASC')->get();
        //$brands = Brand::orderBy('name','ASC')->get();
        $data['categories']=$categories;
        //$data['brands']=$brands;
        return view('admin.products.create',$data);
    }



}
