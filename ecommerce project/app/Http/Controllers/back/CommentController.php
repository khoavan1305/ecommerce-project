<?php

namespace App\Http\Controllers\back;

use App\Http\Controllers\Controller;
use App\Models\productComment;
use App\Models\BlogComment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $Blog_comment=BlogComment::paginate('5');
        $Product_comment=productComment::paginate('5');
        return view('dashboard.comment',compact('Blog_comment','Product_comment'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(productComment $productComment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(productComment $productComment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, productComment $productComment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(productComment $productComment)
    {
        //
    }
}