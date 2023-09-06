<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = 'products';
    protected $primarykey = 'id';
    protected $guarded = [];
    protected $fillable = [
        'id',
        'brand_id',
        'product_category_id',  
        'name',
        'price',
        'size',
        'color',
        'quantity',
        'discount',
        'featured',
        'description',
        'images',
    ];
    public function Brand(){
        return $this->belongsTo(Brand::class,'brand_id','id');
    }
    public function ProductCategory(){
        return $this->belongsTo(ProductCategory::class,'product_category_id','id');
    }
    public function ProductImages(){
        return $this->hasMany(ProductImage::class,'product_id','id');
    }
    public function productDetails(){
        return $this->hasMany(productDetail::class,'product_id','id');
    }
    public function productComments(){
        return $this->hasMany(productComment::class,'product_id','id');
    }
    public function OrderDetails(){
        return $this->hasMany(OrderDetail::class,'product_id','id');
    }
    public function scopeSearch($query){
        if($key=request()->key){
            $query=$query->where('name','like','%'.$key.'%');    
        }
        if($keys=request()->keys){
            $query=$query->where('product_category_id',$keys);    
        }
        if($keyss=request()->keyss){
            $query=$query->orderBy('id',$keyss);    
        }
        if($featured=request()->featured){
            $query=$query->where('featured',$featured);    
        }
        if($lowtohight=request()->lowtohight){
            $query=$query->orderBy('price',$lowtohight);    
        }
        if($price1=request()->price1){
            $query=$query->whereBetween('price',[0,$price1]);    
        }
        if($price2=request()->price2){
            $query=$query->whereBetween('price',[51,$price2]);    
        }
        if($price3=request()->price3){
            $query=$query->whereBetween('price',[101,$price3]);    
        }
        if($price4=request()->price4){
            $query=$query->whereBetween('price',[151,$price4]);    
        }
        if($price5=request()->price5){
            $query=$query->whereBetween('price',[201,$price5]);    
        }
        return $query;
    }
    
}