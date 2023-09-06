@extends('dashboard.layouts.master')
@section('title', 'Product_comment')
@section('body')

    <!-- Orders -->
    <div class="orders container">
        <div class="row">
            <div class="">
                <div class="card">
                    <div class="card-body">
                        <h4 class="btn btn-warning">Product_comment </h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th class="serial">#</th>
                                        <th>ID</th>
                                        <th>Product_ID</th>
                                        <th>User_ID</th>
                                        <th>E-Mail</th>
                                        <th>Tên</th>
                                        <th>Bình luận</th>
                                        <th>Đánh giá</th>
                                        <th>Ngày Đăng </th>
                                        <th>Trạng Thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($Product_comment as $Product_cm)
                                        <tr>
                                            <td class="serial">@php
                                                echo $i++;
                                            @endphp.</td>

                                            <td> #{{ $Product_cm->id }} </td>
                                            <td> <span> {{ $Product_cm->product_id }}</span> </td>
                                            <td> <span> {{ $Product_cm->user_id }}</span> </td>
                                            <td> <span>{{ $Product_cm->email }}</span> </td>
                                            <td> <span>{{ $Product_cm->name }}</span> </td>
                                            <td><span>{{ $Product_cm->messages }}</span></td>
                                            <td><span>{{ $Product_cm->rating }} <i class="fa fa-star"></i> </span></td>
                                            <td><span>{{ $Product_cm->created_at }}</span></td>
                                            <td>
                                                <span class="badge badge-complete">Hoạt động</span>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div> <!-- /.table-stats -->
                    </div>
                </div> <!-- /.card -->
            </div> <!-- /.col-lg-8 -->
            <div class="orders container">
                <div class="row">
                    <div class="">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="btn btn-warning">Blog_comment </h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-table ov-h">
                                    <table class="table ">
                                        <thead>
                                            <tr>
                                                <th class="serial">#</th>
                                                <th>ID</th>
                                                <th>Blog_ID</th>
                                                <th>User_ID</th>
                                                <th>E-Mail</th>
                                                <th>Tên</th>
                                                <th>Bình luận</th>
                                                <th>Ngày Đăng </th>
                                                <th>Trạng Thái</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php
                                                $i = 1;
                                            @endphp
                                            @foreach ($Blog_comment as $Blog_cm)
                                                <tr>
                                                    <td class="serial">@php
                                                        echo $i++;
                                                    @endphp.</td>

                                                    <td> #{{ $Blog_cm->id }} </td>
                                                    <td> <span> {{ $Blog_cm->blog_id }}</span> </td>
                                                    <td> <span> {{ $Blog_cm->user_id }}</span> </td>
                                                    <td> <span>{{ $Blog_cm->email }}</span> </td>
                                                    <td> <span>{{ $Blog_cm->name }}</span> </td>
                                                    <td><span>{{ $Blog_cm->messages }}</span></td>
                                                    <td><span>{{ $Blog_cm->created_at }}</span></td>
                                                    <td>
                                                        <span class="badge badge-complete">Hoạt động</span>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div> <!-- /.table-stats -->
                            </div>
                        </div> <!-- /.card -->
                    </div> <!-- /.col-lg-8 -->


                </div>
            </div>


        </div>
    </div>


@endsection
