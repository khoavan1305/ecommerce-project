@extends('font.layouts.master')
@section('title', 'Home')
@section('body')





    <!-- Slider -->
    @include('font.Include_Products.slideindex')


    <!-- Banner -->
    <div class="sec-banner bg0 p-t-80 p-b-50">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                    <!-- Block1 -->
                    <div class="block1 wrap-pic-w">
                        <img src="fonts/images/banner-01.jpg" alt="IMG-BANNER">

                        <a href="{{ url('/product?keys=2') }}"
                            class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                            <div class="block1-txt-child1 flex-col-l">
                                <span class="block1-name ltext-102 trans-04 p-b-8">
                                    Đồ Nữ
                                </span>

                                <span class="block1-info stext-102 trans-04">
                                    Spring 2023
                                </span>
                            </div>

                            <div class="block1-txt-child2 p-b-4 trans-05">
                                <div class="block1-link stext-101 cl0 trans-09">
                                    Shop Now
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                    <!-- Block1 -->
                    <div class="block1 wrap-pic-w">
                        <img src="fonts/images/banner-02.jpg" alt="IMG-BANNER">

                        <a href="{{ url('/product?keys=1') }}"
                            class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                            <div class="block1-txt-child1 flex-col-l">
                                <span class="block1-name ltext-102 trans-04 p-b-8">
                                    Đồ Nam
                                </span>

                                <span class="block1-info stext-102 trans-04">
                                    Spring 2023
                                </span>
                            </div>

                            <div class="block1-txt-child2 p-b-4 trans-05">
                                <div class="block1-link stext-101 cl0 trans-09">
                                    Shop Now
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                    <!-- Block1 -->
                    <div class="block1 wrap-pic-w">
                        <img src="fonts/images/banner-03.jpg" alt="IMG-BANNER">

                        <a href="{{ url('/product?keys=3') }}"
                            class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                            <div class="block1-txt-child1 flex-col-l">
                                <span class="block1-name ltext-102 trans-04 p-b-8">
                                    Phụ kiện
                                </span>

                                <span class="block1-info stext-102 trans-04">
                                    New Trend
                                </span>
                            </div>

                            <div class="block1-txt-child2 p-b-4 trans-05">
                                <div class="block1-link stext-101 cl0 trans-09">
                                    Shop Now
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Product -->
    <section class="bg0 p-t-23 p-b-140">
        <div class="container">
            <div class="p-b-10">
                <h3 class="ltext-103 cl5">
                    Sản Phẩm Nổi Bật
                </h3>
            </div>

            <div class="flex-w flex-sb-m p-b-52">
                <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                    <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                        <a href="{{ url('') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5  ">
                                Tất cả sản phẩm
                            </button></a>

                        <a href="{{ url('?keys=2') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 ">
                                Đồ Nữ
                            </button></a>

                        <a href="{{ url('?keys=1') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                                Đồ Nam
                            </button></a>

                        <a href="{{ url('?keys=3') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                                Túi
                            </button></a>

                        <a href="{{ url('?keys=4') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                                Giày
                            </button></a>

                        <a href="{{ url('?keys=5') }}"> <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
                                Đồng Hồ
                            </button></a>
                    </div>
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
