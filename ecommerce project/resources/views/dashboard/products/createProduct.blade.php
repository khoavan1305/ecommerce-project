@extends('dashboard.layouts.master')
@section('title', 'Tạo Sản Phẩm')
@section('body')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <div class="col-sm-8">
                            <div class="page-title-box">
                                <h4 class="font-size-18">Sửa Sản Phẩm</h4>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">
                                            <i class="fa fa-home "></i></a></li>
                                    <li class="breadcrumb-item"><a href="{{ route('product.index') }}">Sản phẩm</a></li>
                                    <li class="breadcrumb-item active">Sửa Sản Phẩm</li>
                                </ol>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6 float-right">
                        <a href="{{ route('product.index') }}"class="btn btn-primary float-end">Danh Sách sản phẩm</a>
                    </div>

                </div>
                @if ($errors->any())
                    @foreach ($errors->all() as $err)
                        <p class="alert alert-danger">{{ $err }}</p>
                    @endforeach
                @endif

            </div>
            <div class="card-body">
                <form action="{{ route('product.store') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="productname">Tên sản phẩm</label>
                                <input id="name" name="name" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="price">Giá</label>
                                <input id="price" name="price" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="price">Giá(Sale)</label>
                                <input id="price" name="discount" type="number" class="form-control">
                            </div>

                            <div class="form-group">
                                <label class="control-label">Danh mục</label>
                                <select class="form-control select2 select2-hidden-accessible" data-select2-id="1"
                                    tabindex="-1" aria-hidden="true" name="product_category_id">
                                    <option data-select2-id="3">Chọn</option>
                                    @foreach ($category as $ct)
                                        <option value="{{ $ct->id }}">{{ $ct->name }}</option>
                                    @endforeach
                                </select>
                                <label class="control-label">Features</label>
                                <select class="form-control select2 select2-hidden-accessible" data-select2-id="1"
                                    tabindex="-1" aria-hidden="true" name="featured">
                                    <option data-select2-id="3"value="0">Chọn</option>
                                    <option value="1">Nổi bật</option>
                                    <option value="2">Hàng mới</option>
                                    <option value="3">Giảm giá</option>
                                </select>
                                <label class="control-label">Thương hiệu</label>
                                <select class="form-control select2 select2-hidden-accessible" data-select2-id="1"
                                    tabindex="-1" aria-hidden="true"name="brand_id">
                                    <option data-select2-id="3"value="">Chọn</option>
                                    @foreach ($brand as $bra)
                                        <option value="{{ $bra->id }}">{{ $bra->name }}</option>
                                    @endforeach
                                </select>

                            </div>
                            <div class="form-group">
                                <label for="images">Hình ảnh</label>
                                <input type="file" id="images" name="file_upload" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="productdesc">Mô Tả Sản phẩm</label>
                                <textarea class="form-control" id="summernote" name="description" rows="5"></textarea>
                            </div>
                        </div>
                    </div>
            </div>
            <button type="submit" class="btn btn-success mr-1 waves-effect waves-light">lưu</button> <br>
            <a href="{{ route('product.index') }}" class="btn btn-secondary waves-effect">Thoát</a>
            </form>

        </div>
    </div>
    </div>
@endsection
@section('css')
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
@endsection
@section('js')
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(function() {
            $('#summernote').summernote()
        })
    </script>
@endsection
