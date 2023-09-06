<?php

namespace App\Http\Controllers\font;
use App\Models\User;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Carbon\Carbon;


class UserController extends Controller

{
    public function register(){
        return view('font.register');
    }
    public function register_action(Request $request){
        $request->validate([
            'name' => 'required|max:25',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'password_confirm' => 'required|same:password',
        ]);
        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'avatar' => $request->avatar,
            'password' => Hash::make($request->password),
        ]);
        $user->save();
        return redirect()->route('login')->with('success', 'Đăng ký thành công. Vui lòng hãy đăng nhập!');


    }
    public function login(){
        return view('font.login');
    }

    public function login_action(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $request->session()->regenerate();
           
            return redirect()->intended('/');
        }

        return back()->withErrors([
            'password' => 'Email or password không chính xác',
        ]);
    }
    public function password()
    {
        return view('font.password');
    }

    public function password_action(Request $request)
    {
        $request->validate([
            'old_password' => 'required|current_password',
            'new_password' => 'required|min:6',
            'new_password_confirm' => 'required|same:new_password',

        ]);
        $user = User::find(Auth::id());
        $user->password = Hash::make($request->new_password);
        $user->save();
        $request->session()->regenerate();
        return back()->with('success', 'Thay đổi mật khẩu thành công');    
    }
    public function profile(){
        $order = Order::all();
        return view('font.profile',compact('order'));
    }
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
    public function forgetpass(){
        return view('font.forgetpass');
    }
    public function forgetpass_action(Request $request){
        
     $token = strtoupper(Str::random(20));
        $request->validate([
            'email' => 'required|exists:users'
        ],[
            'email.required' => 'Vui lòng nhập địa chỉ email hợp lệ',
            'email.exists' => 'Email không tồn tại'
        ]);
     $user = User::where('email',$request->email)->first();
     $user->update(['token' => $token]);
        Mail::send('emails.check_email_forget',compact('user'), function ($message) use ($user) {
            $message->subject('CozaStore - Lấy lại mật khẩu');
            $message->to($user->email, $user->name);

        });
        return redirect()->route('login')->with('success', 'Vui lòng kiểm tra email để lấy lại mk...');

    }
    public function getpass($user, $token){
        $usernew = User::where('id',$user)->first();
    //     $date =  now()->hour;
    //  $date1 =   $date - $usernew->created_at->hour;
        if($token === $usernew->token ){
            return view('emails.change_pass_forget',compact('usernew','user','token'));
        }else{
            return view('emails.error_pass_forget',compact('user','token'));

        }
    }
    public function getpass_action(Request $request,$user, $token){
        $request->validate([
            'new_password' => 'required|min:6',
            'new_password_confirm' => 'required|same:new_password',
            
        ]);
        $usernew = User::where('id',$user)->first();
        $usernew->password = Hash::make($request->new_password);
        $usernew->save();
        return redirect()->route('login')->with('success', 'Thay đổi mật khẩu thành công');  
    }
}