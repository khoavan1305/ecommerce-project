@extends('font.layouts.master')
@section('title', 'Product')
@section('body')
    <br> <br> <br> <br>
    <!-- Product -->

    <!-- Cart -->


    <div class="container">
        <div class="flex-w flex-sb-m p-b-52">
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                <a href="{{ url('/product') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 ">
                        Tất cả sản phẩm
                    </button></a>

                <a href="{{ url('/product?keys=2') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 ">
                        Đồ Nữ
                    </button></a>

                <a href="{{ url('/product?keys=1') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                        Đồ Nam
                    </button></a>

                <a href="{{ url('/product?keys=3') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                        Túi
                    </button></a>

                <a href="{{ url('/product?keys=4') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                        Giày
                    </button></a>

                <a href="{{ url('/product?keys=5') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                        Đồng Hồ
                    </button></a>
            </div>

            @include('font.Include_Products.filter')

            <div class="row isotope-grid ">
                @include('font.Include_Products.allproduct')
            </div>
            <div class="flex-c-m flex-w w-full p-t-45">
                {{ $allProducts->appends(request()->all())->links() }}
            </div>
        </div>



    @endsection
