<?php

namespace App\Http\Controllers\font;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\productComment;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\DB;

class ShopController extends Controller
{
    public function index(){
        $allProducts = Product::search()->paginate(8);
        $allProducts = Product::search()->paginate(8);
        $tagProducts = ProductCategory::all();
        return view('font.shop.product',compact('allProducts','tagProducts'));
    }
    public function show($id){
        
        $Product = Product::findOrFail($id);
        $Products = productComment::where('product_id',$id)->get();
        $featuredProducts = Product::where('featured',1)->limit(10)->get();
        return view('font.shop.product-details',compact('Product','Products','featuredProducts'));
    }
 

    public function postComment(Request $request){
        $request->validate([
            'rating' => 'numeric|min:1|max:5',
            'messages' => 'required',
            'name' => 'required',
            'email' => 'required|email',
        ]);
        productComment::create($request->all());
        return redirect()->back();
    }
   
    
}