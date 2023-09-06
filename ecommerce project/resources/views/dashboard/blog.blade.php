@extends('dashboard.layouts.master')
@section('title', 'Blog')
@section('body')

    <!-- Orders -->
    <div class="orders container">
        <div class="row">
            <div class="">
                <div class="card">
                    <div class="card-body">
                        <h4 class="btn btn-warning">Blogs </h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th class="serial">#</th>
                                        <th>ID</th>
                                        <th>User_ID</th>
                                        <th>Tiêu đề</th>
                                        <th>Phụ đề</th>
                                        <th>Hình ảnh</th>
                                        <th>Danh mục</th>
                                        <th>Nội dung</th>
                                        <th>Ngày Đăng</th>
                                        <th>Trạng Thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($Blogs as $Blog)
                                        <tr>
                                            <td class="serial">@php
                                                echo $i++;
                                            @endphp.</td>

                                            <td> #{{ $Blog->id }} </td>
                                            <td> <span> {{ $Blog->user_id }}</span> </td>
                                            <td> <span>{{ $Blog->title }}</span> </td>
                                            <td> <span>{{ $Blog->subtitle }}</span> </td>
                                            <td class="avatar">
                                                <div class="round-img">
                                                    <a href="#"><img class="rounded-circle"
                                                            src="{{ asset('fonts/images') }}/{{ $Blog->image }}"
                                                            alt=""></a>
                                                </div>
                                            </td>
                                            <td><span class="">{{ $Blog->category }}</span></td>
                                            <td><span>{{ $Blog->content }}</span></td>
                                            <td><span>{{ $Blog->created_at }}</span></td>
                                            <td>
                                                <span class="badge badge-complete">Hoạt Động</span>
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


@endsection
