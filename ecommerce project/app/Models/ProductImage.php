<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;
    protected $table = 'product_images';
    protected $primarykey = 'id';
    protected $guarded = [];
    protected $fillable = [
        'product_category_id',
        'path',
    ];

    public function products(){
        return $this->belongsTo(product::class,'product_id','id');
    }
}