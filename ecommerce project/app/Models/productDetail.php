<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productDetail extends Model
{
    use HasFactory;
    protected $table = 'product_details';
    protected $primarykey = 'id';
    protected $guarded = [];
    public function products(){
        return $this->belongsTo(product::class,'product_id','id');
    }
}