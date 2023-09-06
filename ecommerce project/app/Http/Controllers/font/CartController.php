<?php

namespace App\Http\Controllers\font;

use App\Http\Controllers\Controller;
use App\Http\Requests\CartRequest;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Cart;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;



class CartController extends Controller
{
    public function index(){
        return view('font.shop.shoping-cart');
    }
    public function addToCart(Request $request, $id){

        $request->validate([
            'quantity' => 'numeric|min:1|max:5',
            'size' => 'required',
            'color' => 'required',
        ]);
        $Product = new Product([
            'id' => $request->id,
            'name' => $request->name,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'size' => $request->size,
            'color' => $request->color,
            'images' => $request->images,
        ]);
        $cart = session()->get('cart', []);    
            $cart[$id] = [
                "id" => $Product->id,
                "name" => $Product->name,
                "price" => $Product->price,
                "quantity" => $Product->quantity,
                "images" => $Product->images,
                "size" => $Product->size,
                "color" => $Product->color,

            ];
            // dd($cart);
        session()->put('cart', $cart);
        return redirect()->back()->with('success', 'Đã thêm sản phẩm vào giỏ hàng!');
    }
   public function updateCart(Request $request){
    foreach ($request->data as $item) {
        $oldCart = session('cart') ? session('cart') : null;
        $oldCart[$item['key']]['quantity'] = $item['value'];
        $request->Session()->put('cart',$oldCart);
    }
   }


    public function deleteProduct(Request $request)
    {
        if($request->id) {
            $cart = session()->get('cart');
            if(isset($cart[$request->id])) {
                unset($cart[$request->id]);
                session()->put('cart', $cart);
            }
            session()->flash('success', 'Xóa sản phẩm thành công');
        }
    }
    public function checkout(){
        return view('font.shop.checkout');
    }
    public function order(CartRequest $request){
        // dd($request);
        // $request->validate([
        //     'last_name' => 'required',
        //     'email' => 'required|email',
        //     'phone' => 'required|numeric',
        //     'address1' => 'required',
        //     'address2' => 'required',
        // ]);
    $token = strtoupper(Str::random(20));

       $order = new Order([
        'id' => $request->id,
        'user_id' => $request->user_id,
        'first_name' => $request->first_name,
        'last_name' => $request->last_name,
        'email' => $request->email,
        'phone' => $request->phone,
        'address1' => $request->address1,
        'address2' => $request->address2,
        'note' => $request->note,
        'pttt' => $request->pttt,
    ]);
    $order->save();
    $order->update(['token' => $token]);
    $orderdetaill = session('cart') ? session('cart') : null;

    foreach ($orderdetaill as $key => $value) {
        $order_details = new OrderDetail([
            'order_id' => $request->id,
            'total' => $request->total,
            'product_id' => $value['id'],
            'amount' => $value['quantity'],
            'size' => $value['size'],
            'color' => $value['color'],

    ]);
    $order_details->save();
    }
    Mail::send('emails.check_order',compact('order','orderdetaill'), function ($message) use ($order) {
        $message->subject('CozaStore - Xác nhận đơn hàng');
        $message->to($order->email, $order->last_name);

    });
    return  redirect()->route('shopping.cart')->with('thongbao','Đặt hàng thành công,Vui lòng kiểm tra Email để xác nhận đơn hàng trong 72h');

    }
    public function checkorder(Request $request, $order, $token){
        $ordernew = Order::where('id',$order)->first();
        if($token === $ordernew->token ){
            if($ordernew->status == 1){
            return  redirect()->route('shopping.cart')->with('thongbao','Đơn Hàng đã được xác nhận');

            }else{
                $ordernew->update(['status' => 1]);
                $request->session()->forget('cart');
            }
        

            return  redirect()->route('shopping.cart')->with('thongbao','Xác nhận đơn hàng thành công');

        }else{
            return view('emails.error_pass_forget');

        }
    }
}