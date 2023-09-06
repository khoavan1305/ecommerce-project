<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $table = 'orders';
    protected $primarykey = 'id';
    protected $guarded = [];

    public function OrderDetail(){
        return $this->hasMany(OrderDetail::class,'order_id','id');
    }
    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }
}