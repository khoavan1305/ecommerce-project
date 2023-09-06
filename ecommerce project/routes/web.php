<?php

use App\Http\Controllers\back\AdminController;
use App\Http\Controllers\back\BlogController;
use App\Http\Controllers\back\BrandController;
use App\Http\Controllers\back\OrderController;
use App\Http\Controllers\back\OrderdetailController;
use App\Http\Controllers\back\ProductController;
use App\Http\Controllers\back\CommentController;
use App\Http\Controllers\font\CartController;
use App\Http\Controllers\font\HomeController;
use App\Http\Controllers\font\ShopController;
use App\Http\Controllers\font\UserController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
//////////////////////////////////////////////////////////////////////////////////
/*  
FONT END
*/
//////////////////////////////////////////////////////////////////////////////////
Route::prefix('')->group(function(){
    Route::get('/',[HomeController::class,'index'])->name('index');
    Route::get('/blog',[HomeController::class,'blog'])->name('blog');
    Route::get('/about',[HomeController::class,'about'])->name('about');
    Route::get('/contact',[HomeController::class,'contact'])->name('contact');

    Route::get('/test-email',[HomeController::class,'testemail'])->name('test.email');

    
    //ShopController
    Route::get('/product',[ShopController::class,'index'])->name('product');
    Route::get('/product/{id}',[ShopController::class,'show'])->name('show');
    Route::post('/product/comment/{id}',[ShopController::class,'postComment'])->name('post.Comment');
    
    //UserController
    Route::get('/register',[UserController::class,'register'])->name('register');
    Route::post('/register',[UserController::class,'register_action'])->name('register.action');


    
    Route::get('/login',[UserController::class,'login'])->name('login');
    Route::post('/login',[UserController::class,'login_action'])->name('login.action');
    
    Route::get('/password',[UserController::class,'password'])->name('password');
    Route::post('/password',[UserController::class,'password_action'])->name('password.action');

    Route::get('forget-pass',[UserController::class,'forgetpass'])->name('forget.pass');
    Route::post('forget-pass',[UserController::class,'forgetpass_action'])->name('forget.pass.action');
    Route::get('get-pass/{user}/{token}',[UserController::class,'getpass'])->name('get.pass');
    Route::post('get-pass/{user}/{token}',[UserController::class,'getpass_action'])->name('get.pass.action');

    Route::get('check-order/{order}/{token}',[CartController::class,'checkorder'])->name('check.order');
   

    Route::get('/profile',[UserController::class,'profile'])->name('profile');

    
    Route::get('/logout',[UserController::class,'logout'])->name('logout');
    
    //Cart
    Route::get('/shopping-cart',[CartController::class,'index'])->name('shopping.cart');
    Route::post('/product/{id}', [CartController::class, 'addToCart'])->name('add.To.Cart');
    Route::post('/Save-all', [CartController::class, 'updateCart'])->name('update.Cart');
    Route::delete('', [CartController::class, 'deleteProduct'])->name('delete.cart.product');
    Route::get('/checkout',[CartController::class,'checkout'])->name('checkout');
    Route::post('/checkout',[CartController::class,'order'])->name('order');

});
//////////////////////////////////////////////////////////////////////////////////
/*  
BACK END
*/
//////////////////////////////////////////////////////////////////////////////////

Route::prefix('admin')->group(function () {
    Route::get('/',[AdminController::class,'index'])->name('admin.dashboard');
    Route::resources([
        'user' => App\Http\Controllers\back\UserController::class,
        'product' => ProductController::class,
        'blog' => BlogController::class,
        'comment' => CommentController::class,
        'order' => OrderController::class,
        'brand' => BrandController::class,
        'orderdetail' => OrderdetailController::class,
    ]);
});