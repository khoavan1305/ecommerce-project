@extends('dashboard.layouts.master')
@section('title', 'Tạo tài khoản')
@section('body')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Thêm sinh viên</h3>
                    </div>
                    <div class="col-md-6">
                        <a href="{{ route('user.index') }}"class="btn btn-primary float-end">Danh Sách user</a>
                    </div>
                </div>
                @if ($errors->any())
                    @foreach ($errors->all() as $err)
                        <p class="alert alert-danger">{{ $err }}</p>
                    @endforeach
                @endif

            </div>
            <div class="card-body">
                <form action="{{ route('user.store') }}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <strong>Tên</strong>
                                <input type="text" name='name' value="{{ old('name') }}" class="form-control">
                            </div>
                            <div class="form-group">
                                <strong>Email</strong>
                                <input type="text" name='email'value="{{ old('email') }}" class="form-control">
                            </div>

                            <div class="form-group">
                                <strong>PassWord</strong>
                                <input type="password" name='password' value="{{ old('password') }}" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <strong>avatar</strong>
                                <input type="file" name='avatar' class="form-control">
                            </div>
                            <div class="form-group">
                                <strong>level</strong>
                                <input type="text" name='level' value="{{ old('level') }}" class="form-control">
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success mt-2">Lưu</button>
                </form>
            </div>
        </div>
    </div>
@endsection
