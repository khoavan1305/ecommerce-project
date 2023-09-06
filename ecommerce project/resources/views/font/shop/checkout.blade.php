@extends('font.layouts.master')
@section('title', 'CheckOut')
@section('body')
    <style>
        em {
            color: red
        }
    </style>
    <!-- Css Styles -->
    <link rel="stylesheet" href="fonts/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="fonts/css/style.css" type="text/css">
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">Có phiếu
                            giảm giá?</a> Nhấn vào đây để nhập mã của bạn.</h6>
                </div>
            </div>
            <form action="{{ route('order') }}" method="post" class="checkout__form">
                @csrf
                <input type="hidden"name="user_id"value="{{ Auth::user()->id }}">
                <input type="hidden"name="id"value="{{ time() }}">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>Chi Tiết Hóa Đơn</h5>
                        @if ($errors->any())
                            <p class="alert alert-danger"><em>
                                    @error('pttt')
                                        {{ $message }}
                                    @enderror
                                </em></p>
                        @endif
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Tên <span>*</span></p>
                                    <input name="first_name" type="text" value="{{ old('first_name') }}">
                                    <em>
                                        @error('first_name')
                                            {{ $message }}
                                        @enderror
                                    </em>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Họ <span>*</span></p>
                                    <input name="last_name" type="text" value="{{ old('last_name') }}">
                                    <em>
                                        @error('last_name')
                                            {{ $message }}
                                        @enderror
                                    </em>
                                </div>
                            </div>
                            <div class="checkout__form__input">
                                <p>Thành phố (tỉnh) <span>*</span></p>
                                <input type="text" name="address1" placeholder="VD:TPHCM" value="{{ old('address1') }}">
                                <em>
                                    @error('address1')
                                        {{ $message }}
                                    @enderror
                                </em>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>Chi tiết địa chỉ<span>*</span></p>
                                    <input type="text" name="address2"
                                        placeholder="VD: 113 Nguyễn văn khối,phường 14,Gò Vấp"
                                        value="{{ old('address2') }}">
                                    <em>
                                        @error('address2')
                                            {{ $message }}
                                        @enderror
                                    </em>
                                </div>

                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Số điện thoại <span>*</span></p>
                                    <input name="phone" type="phone" value="{{ old('phone') }}">
                                    <em>
                                        @error('phone')
                                            {{ $message }}
                                        @enderror
                                    </em>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>Địa chỉ E-Mail <span>*</span></p>
                                    <input name="email" type="email" value="{{ old('email') }}">
                                    <em>
                                        @error('email')
                                            {{ $message }}
                                        @enderror
                                    </em>
                                </div>
                            </div>
                            <div class="checkout__form__input">
                                <p>Ghi chú<span></span></p>
                                <input name="note" type="text">
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="checkout__order">
                            <h5>Giỏ Hàng</h5>
                            @if (session('cart'))

                                @php
                                    $stt = 0;
                                    $total = 0;
                                @endphp
                                <div class="checkout__order__product">
                                    <ul>
                                        <li>
                                            <span class="top__text">Sản phẩm</span>
                                            <span class="top__text__right">Tổng</span>
                                        </li>
                                        @foreach (session('cart') as $id => $details)
                                            <input type="hidden"name="product_id"value="{{ $details['id'] }}">
                                            @php
                                                $stt++;
                                            @endphp
                                            <li>{{ $stt }}. {{ $details['name'] }} <span>$
                                                    {{ $details['price'] * $details['quantity'] }}</span></li>
                                            @php
                                                $total += $details['price'] * $details['quantity'];
                                                
                                            @endphp
                                        @endforeach

                                    </ul>
                                </div>
                            @endif
                            <div class="checkout__order__total">
                                <ul>
                                    <li>Tổng <span>
                                            $ @php
                                                echo $total;
                                            @endphp
                                        </span></li>
                                </ul>
                            </div>
                            <input type="hidden" name="total" value="@php echo $total @endphp">

                            <div class="checkout__order__widget">
                                <label>
                                    MoMo
                                    <input type="radio" name="pttt" value="MoMo">
                                    <span class="checkmark"></span>
                                </label>
                                <label>
                                    Thanh toan khi nhận hàng
                                    <input type="radio" name="pttt" value="Thanh toán khi nhận hàng">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <button type="submit" class="site-btn">Đặt hàng</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
