<?php

namespace App\Http\Controllers\back;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $Users=User::search()->paginate('15');    
        return view('dashboard.users.user',compact('Users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.users.createUser');

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
                    'name' => 'required|max:25',
                    'email' => 'required|email|unique:users',
                    'password' => 'required|min:6',
                    'level' => 'required|min:0|max:1|numeric:0,1',
                ]);
                User::create($request->all());
               
                return redirect()->route('user.index')->with('thongbao','Thêm User Thành Công');   
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {

        return view('dashboard.users.edituser',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,User  $user)
    {
        $request->validate([
            'name' => 'required|max:25',
            'password' => 'required|min:6',
            'level' => 'required|min:0|max:1|numeric:0,1',

        ]);
        Hash::make($request->password);
        $user->update($request->all());
        return  redirect()->route('user.index')->with('thongbao','Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
            $user->delete();
            return  redirect()->route('user.index')->with('thongbao','Xóa thành công');
    }
}