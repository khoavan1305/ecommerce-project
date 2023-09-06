@extends('dashboard.layouts.master')
@section('title', 'Product')
@section('body')

    <!-- Orders -->
    <div class="orders container">

        <div class="row">
            <div class="container float-right">
                <form action="" method="GET" class="form-inline" role="form">
                    <div class="form-group">
                        <input type="text" name="key" class="form-control" placeholder="Tìm kiếm">
                        {{-- <small id="helpId" class="text-muted">Help text</small> --}}
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                </form>
            </div>
            <div class="">
                <div class="card">
                    <div class="card-body">
                        <h4 class="btn btn-warning"><i class="fa  fa-archive"></i> Products </h4>
                        <div class="col-md-6 float-right">
                            <a href="{{ route('product.create') }}"class="btn btn-warning float-right"><i
                                    class="fa fa-plus"></i>
                                Thêm mới</a>
                        </div>
                    </div>

                    @if (Session::has('thongbao'))
                        <div class="alert alert-success">
                            {{ Session::get('thongbao') }}
                        </div>
                    @endif
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th class="serial">#</th>
                                        <th class="avatar">Product</th>
                                        <th>ID</th>
                                        <th>Tên</th>
                                        <th>Mô tả</th>
                                        <th>Giá</th>
                                        <th>discount</th>
                                        <th>Trạng thái</th>
                                        <th>Hành Động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($Products as $Product)
                                        <tr>
                                            <td class="serial">@php
                                                echo $i++;
                                            @endphp.</td>
                                            <td class="avatar">
                                                <div class="round-img">
                                                    <a href="#"><img class="rounded-circle"
                                                            src="{{ asset('fonts/images') }}/{{ $Product->images }}"
                                                            alt=""></a>
                                                </div>

                                            </td>
                                            <td> {{ $Product->id }} </td>
                                            <td> <span class="name"> {{ $Product->name }}</span> </td>
                                            <td> <span class="email"
                                                    style="max-width: 100px">{{ $Product->description }}</span> </td>
                                            <td><span class="password">{{ $Product->price }}</span></td>
                                            <td><span class="name">{{ $Product->discount }}</span></td>
                                            <td>
                                                <span class="badge badge-complete">Còn Hàng</span>
                                            </td>
                                            <td>
                                                <a href="{{ route('product.edit', $Product->id) }}"
                                                    class=" btn btn-warning">
                                                    <i class="fa fa-edit"></i> Sửa</a>
                                                <hr>

                                                <a href="{{ route('product.destroy', $Product->id) }}"
                                                    class=" btn btn-danger btndelete"><i class="fa fa-trash"></i>
                                                    Xóa</a>

                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <form action="" method="POST" id="form-delete">
                                @csrf
                                @method('DELETE')
                            </form>
                        </div> <!-- /.table-stats -->
                    </div>

                </div> <!-- /.card -->
                <div class="float-right">
                    {{ $Products->appends(request()->all())->links() }}

                </div>
            </div> <!-- /.col-lg-8 -->


        </div>
    </div>
@endsection
@section('js')
    <script>
        $(".btndelete").click(function(e) {
            e.preventDefault();
            var _href = $(this).attr('href');
            $('form#form-delete').attr('action', _href);
            if (confirm("Bạn có chắc muốn xóa không")) {
                $('form#form-delete').submit();
            }

        });
    </script>
@endsection
