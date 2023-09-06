@extends('font.layouts.master')
@section('title', 'Product-Detaill')
@section('body')

    <br> <br> <br>
    <hr>
    <!-- Product Details Section Begin -->
    <!-- breadcrumb -->
    <div class="container">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="{{ route('index') }}" class="stext-109 cl8 hov-cl1 trans-04">
                Trang chủ
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <a href="{{ route('product') }}" class="stext-109 cl8 hov-cl1 trans-04">
                {{ $Product->tag }}
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">
                {{ $Product->name }}
            </span>
        </div>
    </div>


    <!-- Product Detail -->
    <section class="sec-product-detail bg0 p-t-65 p-b-60">

        <div class="container">

            <div class="row">
                <div class="col-md-6 col-lg-7 p-b-30">
                    <div class="p-l-25 p-r-30 p-lr-0-lg">
                        <div class="wrap-slick3 flex-sb flex-w">
                            <div class="wrap-slick3-dots"></div>
                            <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                            <div class="slick3 gallery-lb">
                                <div class="item-slick3" data-thumb="fonts/images/{{ $Product->images }}">
                                    <div class="wrap-pic-w pos-relative">
                                        <img src="fonts/images/{{ $Product->images }}" alt="IMG-PRODUCT">

                                        <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                            href="fonts/images/{{ $Product->images }}">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="item-slick3" data-thumb="fonts/images/product-detaill/{{ $Product->images }}">
                                    <div class="wrap-pic-w pos-relative">
                                        <img src="fonts/images/product-detaill/{{ $Product->images }}" alt="IMG-PRODUCT">

                                        <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                            href="fonts/images/product-detaill/{{ $Product->images }}">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="item-slick3"
                                    data-thumb="fonts/images/product-detaill/product/{{ $Product->images }}">
                                    <div class="wrap-pic-w pos-relative">
                                        <img src="fonts/images/product-detaill/product/{{ $Product->images }}"
                                            alt="IMG-PRODUCT">

                                        <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                            href="fonts/images/product-detaill/product/{{ $Product->images }}">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-5 p-b-30">
                    <form action="{{ route('add.To.Cart', $Product->id) }}" method="post">
                        @csrf
                        <input type="hidden" name="name" value="  {{ $Product->name }}">
                        <input type="hidden" name="id" value="  {{ $Product->id }}">
                        <input type="hidden" name="price" value="  {{ $Product->price }}">
                        <input type="hidden" name="images" value="  {{ $Product->images }}">
                        @if ($errors->any())
                            @foreach ($errors->all() as $err)
                                <p class="alert alert-danger">{{ $err }}</p>
                            @endforeach
                        @endif
                        <div class="p-r-50 p-t-5 p-lr-0-lg">
                            <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                                {{ $Product->name }}
                            </h4>

                            <span class="mtext-106 cl2">
                                ${{ $Product->price }}

                            </span> <br> <br>

                            <p class="stext-10 p-t-10 "
                                style="overflow: hidden;
                        text-overflow: ellipsis;
                        white-space: normal;
                        width: 500px;
                        display: -webkit-box;
                        -webkit-box-orient: vertical;
                        -webkit-line-clamp: 3;">
                                {{ $Product->description }}

                            </p>
                            <br> <br>
                            <!--  -->
                            <div class="p-t-33">
                                <div class="flex-w flex-r-m p-b-10">
                                    <div class="size-203 flex-c-m respon6">
                                        Size
                                    </div>

                                    <div class="size-204 respon6-next">
                                        <div class="rs1-select2 bg0">
                                            <select class="js-select2 bor8 bg0" name="size">
                                                <option value="">Chọn size</option>
                                                <option value="S">Size S</option>
                                                <option value="M">Size M</option>
                                                <option value="L">Size L</option>
                                                <option value="XL">Size XL</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="flex-w flex-r-m p-b-10">
                                    <div class="size-203 flex-c-m respon6">
                                        Color
                                    </div>

                                    <div class="size-204 respon6-next">
                                        <div class="rs1-select2 bg0">
                                            <select class="js-select2 bor8 bg0" name="color">
                                                <option value="">Chọn màu</option>
                                                <option value="red">Đỏ</option>
                                                <option value="Blue">Xanh dương</option>
                                                <option value="White">Trắng</option>
                                                <option value="Grey">Xám</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="flex-w flex-r-m p-b-10">
                                    <div class="size-204 flex-w flex-m respon6-next">
                                        <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                            <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                <i class="fs-16 zmdi zmdi-minus"></i>
                                            </div>

                                            <input class="mtext-104 cl3 txt-center num-product" type="number"
                                                name="quantity" maxlength="10" value="1">

                                            <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                <i class="fs-16 zmdi zmdi-plus"></i>
                                            </div>
                                        </div>
                                        @if (Auth::check())
                                            @if (Auth::user()->id != null)
                                                <button
                                                    class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                                                    Thêm Giỏ hàng
                                                </button>
                                            @endif
                                        @else
                                            <a href="{{ route('login') }}"
                                                class=" flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04"
                                                onclick="error();">Thêm
                                                giỏ hàng</a>
                                            <script>
                                                function error() {
                                                    alert('Bạn cần đăng nhập để mua hàng')
                                                }
                                            </script>
                                        @endif
                                    </div>
                                </div>
                                @if (session('success'))
                                    <div class="alert alert-success">
                                        {{ session('success') }}
                                    </div>
                                @endif
                            </div>

                            <!--  -->
                            <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                                <div class="flex-m bor9 p-r-10 m-r-11">
                                    <a href="#"
                                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
                                        data-tooltip="Add to Wishlist">
                                        <i class="zmdi zmdi-favorite"></i>
                                    </a>
                                </div>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                                    data-tooltip="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                                    data-tooltip="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                                    data-tooltip="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>
                        </div>
                </div>
                </form>
            </div>


            <div class="bor10 m-t-50 p-t-43 p-b-40">
                <!-- Tab01 -->
                <div class="tab01">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item p-b-10">
                            <a class="nav-link active" data-toggle="tab" href="#description" role="tab">Mô Tả</a>
                        </li>

                        <li class="nav-item p-b-10">
                            <a class="nav-link" data-toggle="tab" href="#information" role="tab">Thông Tin</a>
                        </li>

                        <li class="nav-item p-b-10">
                            <a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Bình Luận (
                                {{ $Product->productComments->Count('messages') }})</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content p-t-43">
                        <!-- - -->
                        <div class="tab-pane fade show active" id="description" role="tabpanel">
                            <div class="how-pos2 p-lr-15-md">
                                <p class="stext-102 cl6">
                                    {!! $Product->description !!}
                                </p>
                            </div>
                        </div>

                        <!-- - -->
                        <div class="tab-pane fade" id="information" role="tabpanel">
                            <div class="row">
                                <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                                    <ul class="p-lr-28 p-lr-15-sm">
                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">
                                                Chiều dài
                                            </span>

                                            <span class="stext-102 cl6 size-206">
                                                0.79 kg
                                            </span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">
                                                Kích thước
                                            </span>

                                            <span class="stext-102 cl6 size-206">
                                                110 x 33 x 100 cm
                                            </span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">
                                                Vật liệu
                                            </span>

                                            <span class="stext-102 cl6 size-206">
                                                60% cotton
                                            </span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">
                                                màu
                                            </span>

                                            <span class="stext-102 cl6 size-206">
                                                Đen, Xanh dương, Xám, Xanh, Đỏ, Trắng
                                            </span>
                                        </li>

                                        <li class="flex-w flex-t p-b-7">
                                            <span class="stext-102 cl3 size-205">
                                                Kích thước
                                            </span>

                                            <span class="stext-102 cl6 size-206">
                                                XL, L, M, S
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- - -->
                        <div class="tab-pane fade" id="reviews" role="tabpanel">
                            <div class="row">
                                <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                                    <div class="p-b-30 m-lr-15-sm">
                                        <!-- Review -->
                                        @if ($Product->productComments->Count('product_id') > 0)
                                            @foreach ($Products as $Productss)
                                                <div class="flex-w flex-t p-b-68">
                                                    <div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
                                                        <img src="dashboard/images/avatar/{{ $Productss->user->avatar ?? 'avatar-02.jpg' }}"
                                                            alt="">
                                                    </div>
                                                    <div class="size-207">
                                                        <div class="flex-w flex-sb-m p-b-17">
                                                            <span class="mtext-107 cl2 p-r-20">
                                                                {{ $Productss->name }}
                                                            </span>
                                                            @if ($Productss->rating === 0)
                                                            @elseif ($Productss->rating === 1)
                                                                <span class="fs-18 cl11">
                                                                    <i class="zmdi zmdi-star"></i>
                                                                </span>
                                                            @elseif ($Productss->rating === 2)
                                                                <span class="fs-18 cl11">
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                </span>
                                                            @elseif ($Productss->rating === 3)
                                                                <span class="fs-18 cl11">
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                </span>
                                                            @elseif ($Productss->rating === 4)
                                                                <span class="fs-18 cl11">
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                </span>
                                                            @elseif ($Productss->rating === 5)
                                                                <span class="fs-18 cl11">
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                    <i class="zmdi zmdi-star"></i>
                                                                </span>
                                                            @endif

                                                        </div>

                                                        <p class="stext-102 cl6">
                                                            {{ $Productss->created_at }}
                                                        </p>
                                                    </div>
                                                </div>

                                                <!-- Add review -->

                                                <p class="stext-102">
                                                    {{ $Productss->messages }} </p>
                                                <br>
                                            @endforeach
                                        @else
                                            <p>Chưa có bình luận</p>
                                        @endif
                                        <form action="{{ route('post.Comment', $Product->id) }}" method="post">
                                            @csrf
                                            <input type="hidden" name="product_id" value="{{ $Product->id }}">
                                            <input type="hidden" name="user_id" value="{{ Auth::user()->id ?? null }}">
                                            <div class="flex-w flex-m p-t-50 p-b-23">
                                                <span class="stext-102 cl3 m-r-16">
                                                    Đánh giá
                                                </span>

                                                <span class="wrap-rating fs-18 cl11 pointer">
                                                    <i
                                                        class="item-rating pointer zmdi zmdi-star-outline"name="rating"value="1"></i>
                                                    <i
                                                        class="item-rating pointer zmdi zmdi-star-outline"name="rating"value="2"></i>
                                                    <i
                                                        class="item-rating pointer zmdi zmdi-star-outline"name="rating"value="3"></i>
                                                    <i
                                                        class="item-rating pointer zmdi zmdi-star-outline"name="rating"value="4"></i>
                                                    <i
                                                        class="item-rating pointer zmdi zmdi-star-outline"name="rating"value="5"></i>
                                                    <input class="dis-none" type="number" name="rating">
                                                </span>
                                            </div>

                                            <div class="row p-b-25">
                                                <div class="col-12 p-b-5">
                                                    <label class="stext-102 cl3" for="messages">Bình luận</label>
                                                    <textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="messages"></textarea>
                                                </div>
                                                @auth
                                                    <div class="col-sm-6 p-b-5">
                                                        <label class="stext-102 cl3" for="name">Tên</label>
                                                        <input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
                                                            value="{{ Auth::user()->name }}" readonly type="text"
                                                            name="name">
                                                    </div>

                                                    <div class="col-sm-6 p-b-5">
                                                        <label class="stext-102 cl3" for="email">Email</label>
                                                        <input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
                                                            value="{{ Auth::user()->email }}" readonly type="text"
                                                            name="email">
                                                    </div>
                                                @endauth
                                                @guest
                                                    <div class="col-sm-6 p-b-5">
                                                        <label class="stext-102 cl3" for="name">Tên</label>
                                                        <input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name"
                                                            type="text" name="name">
                                                    </div>

                                                    <div class="col-sm-6 p-b-5">
                                                        <label class="stext-102 cl3" for="email">Email</label>
                                                        <input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email"
                                                            type="text" name="email">
                                                    </div>
                                                @endguest
                                            </div>

                                            <button type="submit"
                                                class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
                                                Đăng bình luận
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>


    <!-- Related Products -->
    <section class="sec-relate-product bg0 p-t-45 p-b-105">
        <div class="container">
            <div class="p-b-45">
                <h3 class="ltext-106 cl5 txt-center">
                    SẢN PHẨM NỔI BẬT
                </h3>
            </div>

            <!-- Slide2 -->

            <div class="wrap-slick2">
                <div class="slick2">
                    @foreach ($featuredProducts as $featuredProducts)
                        <div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img src="fonts/images/{{ $featuredProducts->images }}" alt="IMG-PRODUCT">

                                    <a href="{{ route('show', $featuredProducts->id) }}"
                                        class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
                                        Quick View
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="product-detail.html"
                                            class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            {{ $featuredProducts->name }}
                                        </a>

                                        <span class="stext-105 cl3">
                                            ${{ $featuredProducts->price }}
                                        </span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04"
                                                src="fonts/images/icons/icon-heart-01.png" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l"
                                                src="fonts/images/icons/icon-heart-02.png" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    </section>


@endsection
