<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    public function blog(){
        return $this->hasMany(blog::class,'user_id','id');
    }
    public function productComment(){
        return $this->hasMany(productComment::class,'user_id','id');
    }
    public function order(){
        return $this->hasMany(Order::class,'user_id','id');
    }
    public function scopeSearch($query){
        if($key=request()->key){
            $query=$query->where('email','like','%'.$key.'%');    
        }
        return $query;
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    
     protected $fillable = [
        'name',
        'email',
        'password',

        'avatar',
        'level',
        'description',
        'token',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];
}