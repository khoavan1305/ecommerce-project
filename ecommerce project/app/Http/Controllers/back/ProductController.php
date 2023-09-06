<?php

namespace App\Http\Controllers\back;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductImage;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    $Products=Product::orderBy('id','desc')->search()->paginate('10');
      return view('dashboard.products.product',compact('Products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $category = ProductCategory::orderBy('name','ASC')->select('id','name')->get();
        $brand = Brand::orderBy('name','ASC')->select('id','name')->get();
        return view('dashboard.products.createProduct',compact('category','brand'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'name' => 'required|max:25',
        //     'email' => 'required|email|unique:users',
        //     'password' => 'required|min:6',
        //     'level' => 'required|min:0|max:1|numeric:0,1',
        // ]);
        // dd($request->name);
        // dd($request->images);

        // $product = new Product([
        //     'brand_id'=>$request->brand_id,
        //     'product_category_id'=>$request->product_category_id,  
        //     'name' => $request->name,
        //     'price'=>$request->price,
        //     'discount'=>$request->discount,
        //     'featured'=>$request->featured,
        //     'description'=>$request->description,
        //     'images'=>$request->images,
        // ]);
        if($request->has('file_upload')){
            $file = $request->file_upload;
           $ext = $request->file_upload->extension();
            $file_name ='product'.'-'.time().'.'.$ext;
            $file->move(public_path('fonts/images'),$file_name);
        }
        $request->merge(['images'=>$file_name]); 
            // dd($file_name);
        Product::create($request->all());
        // $product->save();


        return redirect()->route('product.index')->with('thongbao','Thêm Sản Phẩm Thành Công');    
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product,)
    {
        $category = ProductCategory::orderBy('name','ASC')->select('id','name')->get();
        $brand = Brand::orderBy('name','ASC')->select('id','name')->get();
        return view('dashboard.products.editproduct',compact('product','category','brand'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        $request->validate([
            'name' => 'required',
            'brand_id' => 'required',
            'product_category_id' => 'required',
            'price' => 'required',
            'file_upload' => 'max:2000|mimes:jpeg,png,doc,docs,pdf|required'

        ]);
        if($request->has('file_upload')){
            $file = $request->file_upload;
           $ext = $request->file_upload->extension();
            $file_name ='product'.'-'.time().'.'.$ext;
            $file->move(public_path('fonts/images'),$file_name);
        }
        $request->merge(['images'=>$file_name]); 
        $product->update($request->all());
        return  redirect()->route('product.index')->with('thongbao','Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return  redirect()->route('product.index')->with('thongbao','Xóa thành công');
    }
}