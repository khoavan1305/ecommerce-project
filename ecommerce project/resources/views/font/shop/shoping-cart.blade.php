@extends('font.layouts.master')
@section('title', 'Shopping-Cart')
@section('body')
    <br> <br> <br>
    <!-- breadcrumb -->
    <div class="container">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="{{ url('/') }}" class="stext-109 cl8 hov-cl1 trans-04">
                Trang chủ
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">
                Giỏ hàng
            </span>
        </div>
    </div>


    <!-- Shoping Cart -->
    <form class="bg0 p-t-75 p-b-85" action="" method="post">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <div class="m-l-25 m-r--38 m-lr-0-xl">
                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif
                        @if (Session::has('thongbao'))
                            <div class="alert alert-success">
                                {{ Session::get('thongbao') }}
                            </div>
                        @endif
                        @if (session('cart') == null)
                            <a href="{{ url('/product') }}">
                                <h2 class="btn btn-outline-danger">Giỏ hàng trống</h2>
                            </a>
                            <br> <br>
                        @endif

                        <div class="wrap-table-shopping-cart">

                            <table class="table-shopping-cart">
                                <tr class="table_head">
                                    <th class="column-1">Sản phẩm</th>
                                    <th class="column-2"></th>
                                    <th class="column-3">Giá</th>
                                    <th class="column-4">Số lượng</th>
                                    <th class="column-5">Tổng</th>
                                </tr>
                                @if (session('cart'))

                                    @php
                                        $total1 = 0;
                                    @endphp
                                    @foreach (session('cart') as $id => $details)
                                        <tr class="table_row" rowId="{{ $id }}">
                                            <td class="column-1">
                                                <div class="how-itemcart1 delete-product1">
                                                    <img src="fonts/images/{{ $details['images'] }}" alt="IMG">
                                                </div>
                                                <b style="font-size: 10px;margin-left:10px">{{ $details['size'] }} |
                                                    {{ $details['color'] }}</b>
                                            </td>

                                            <td class="column-2">{{ $details['name'] }}

                                            </td>
                                            <td class="column-3">${{ $details['price'] }}</td>
                                            <td class="column-4">
                                                <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                                    <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                        <i class="fs-16 zmdi zmdi-minus"></i>
                                                    </div>

                                                    <input data-id="{{ $details['id'] }}"
                                                        class="mtext-104 cl3 txt-center num-product" type="number"
                                                        name="quantity" value="{{ $details['quantity'] }}">

                                                    <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                        <i class="fs-16 zmdi zmdi-plus"></i>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="column-5">${{ $details['price'] * $details['quantity'] }} </td>



                                        </tr>
                                        @php
                                            
                                            $total = $details['price'] * $details['quantity'];
                                            $total1 += $total;
                                        @endphp
                                    @endforeach


                                @endif
                            </table>
                        </div>

                        <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                            <div class="flex-w flex-m m-r-20 m-tb-5">
                                <input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text"
                                    name="coupon" placeholder="Mã KM">

                                <div
                                    class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                    Thêm KM
                                </div>
                            </div>

                            <div
                                class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10 updateCart">
                                Cập nhật giỏ hàng
                            </div>
                        </div>
                    </div>
                </div>
                @if (session('cart') != null)

                    <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                        <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                            <h4 class="mtext-109 cl2 p-b-30">
                                Giỏ Hàng
                            </h4>





                            <div class="flex-w flex-t p-t-27 p-b-33">
                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Tổng:
                                    </span>
                                </div>

                                <div class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        @if (session('cart'))
                                            $ @php
                                                echo $total1;
                                            @endphp
                                        @endif


                                    </span>
                                </div>
                            </div>

                            <a href="{{ route('checkout') }}"
                                class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
                                Đặt Hàng
                            </a>
                        </div>
                    </div>
                @endif

            </div>
        </div>
    </form>
@endsection
@section('script')
    <script>
        $(".delete-product1").click(function(e) {
            e.preventDefault();

            var ele = $(this);

            if (confirm("Bạn có muốn xóa sản phẩm này")) {
                $.ajax({
                    url: '{{ route('delete.cart.product') }}',
                    method: "DELETE",
                    data: {
                        _token: '{{ csrf_token() }}',
                        id: ele.parents("tr").attr("rowId")
                    },
                    success: function(response) {
                        window.location.reload();
                    }
                });
            }
        });

        $(".updateCart").on('click', function() {
            var lists = [];
            $('table tbody tr td').each(function() {
                $(this).find('input').each(function() {
                    var element = {
                        key: $(this).data("id"),
                        value: $(this).val()
                    };
                    lists.push(element);
                })
            })
            $.ajax({
                url: '{{ route('update.Cart') }}',
                type: 'POST',
                data: {
                    "_token": "{{ csrf_token() }}",
                    "data": lists
                }

            }).done(function(response) {
                location.reload();
            })

        })
    </script>
@endsection
