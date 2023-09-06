<?php

namespace App\Http\Controllers\back;

use App\Http\Controllers\Controller;
use App\Http\Support\Facades\DB;
use App\Models\Blog;
use App\Models\Product;
use App\Models\productComment;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BlogComment;
use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\ProductImage;
use Illuminate\Support\Facades\Hash;
class AdminController extends Controller
{
    public function index(){
        $Users=User::all();
        $Products=Product::all();
        $Blogs=Blog::all();
        $Blog_comment=BlogComment::all();
        $Product_comment=productComment::all();

        return view('dashboard.index',compact('Users','Products','Blogs','Blog_comment','Product_comment'));
    }
   
}