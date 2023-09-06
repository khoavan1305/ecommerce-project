@extends('font.layouts.master')
@section('title', 'Profile')
@section('body')
    <section style="background-color: #eee;">
        <br> <br>
        <div class="container py-5">

            <div class="row">
                <div class="col-lg-4">
                    <div class="card mb-4 w-50 float-right">
                        <div class="card-body text-center ">
                            <img src="{{ asset('dashboard/images/avatar') }}/{{ Auth::user()->avatar ?? '6.jpg' }}"
                                alt="avatar" class="rounded-circle img-fluid" style="width: 50px;">
                            <h5 class="my-3">{{ Auth::user()->name }}</h5>

                        </div>
                    </div>

                </div>
                <div class="col-lg-8">
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Full Name</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0">{{ Auth::user()->name }}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Email</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0">{{ Auth::user()->email }}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Cấp độ</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0">
                                        @if (Auth::user()->level == 0)
                                            Quản trị viên.
                                        @else
                                            Người dùng.
                                        @endif
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <form class="bg0 p-t-75 p-b-85" action="" method="post">
        <div class="container">
            <div class="row">

                <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                    <h3>Sản phẩm đã mua</h3>
                    <br> <br>
                    <div class="m-l-25 m-r--38 m-lr-0-xl">

                        <div class="wrap-table-shopping-cart">
                            <table class="table-shopping-cart">
                                <tr class="table_head">
                                    <th class="column-1">Sản phẩm</th>
                                    <th class="column-2"></th>
                                    <th class="column-3">Giá</th>
                                    <th class="column-4">Số lượng</th>
                                    <th class="column-5">Tổng</th>
                                </tr>

                                @foreach ($order as $orders)
                                    @if ($orders->user_id === Auth::user()->id)
                                        @foreach ($orders->OrderDetail as $OrderDetails)
                                            <tr class="table_row">
                                                <td class="column-1">
                                                    <div class="how-itemcart1 ">
                                                        <img src="fonts/images/{{ $OrderDetails->product->images }}"
                                                            alt="IMG">
                                                    </div>
                                                    <b style="font-size: 10px;margin-left:10px">{{ $OrderDetails->size }}
                                                        |
                                                        {{ $OrderDetails->color }}</b>
                                                </td>

                                                <td class="column-2">{{ $OrderDetails->product->name }}

                                                </td>
                                                <td class="column-3">${{ $OrderDetails->product->price }}</td>
                                                <td class="column-4">
                                                    <h5>{{ $OrderDetails->amount }}</h5>
                                                </td>
                                                <td class="column-5">
                                                    ${{ $OrderDetails->product->price * $OrderDetails->amount }} </td>
                                            </tr>
                                        @endforeach
                                        {{-- @else
                                        {{-- <a href="{{ url('/product') }}">
                                            <h2 class="btn btn-outline-danger">Giỏ hàng trống</h2>
                                        </a>
                                        <br> <br>  --}}
                                    @endif
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection
