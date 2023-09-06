<?php

namespace App\Http\Controllers\font;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Blog;
use App\Models\User;
use App\Models\ProductCategory;
use App\Models\productComment;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller

{
    public function index(){
        $allProducts = Product::search()->paginate(8);
        $tagProducts = ProductCategory::all();
        return view('font.index',compact('allProducts','tagProducts'));
    }
    public function blog(){
        $blogs = Blog::orderBy('id','asc')->limit(3)->get();
        $featuredProducts = Product::where('featured',1)->limit(3)->get();
        $tagProducts = ProductCategory::all();
        return view('font.blog',compact('blogs','featuredProducts','tagProducts'));
    }
    public function about(){
        return view('font.about');
    }
    public function contact(){
        return view('font.contact');
    }
    public function testemail(){
        $name = 'test name for email';
        Mail::send('emails.test',compact('name'), function ($message) {
            $message->subject('Subject');
            $message->to('khoavan1305@gmail.com', 'Khoa Văn');
         
        });
    }
  
}