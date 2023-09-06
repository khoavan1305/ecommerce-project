@extends('dashboard.layouts.master')
@section('title', 'Edit User')
@section('body')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Update User</h3>
                    </div>
                    <div class="col-md-6">
                        <a href="{{ route('user.index') }}"class="btn btn-primary float-end">Danh Sách user</a>
                    </div>
                </div>
            </div>
            @if ($errors->any())
                @foreach ($errors->all() as $err)
                    <p class="alert alert-danger">{{ $err }}</p>
                @endforeach
            @endif
            <div class="card-body">
                <form action="{{ route('user.update', $user->id) }}" method="post">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <input type="hidden" value="{{ $user->id }}">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <strong>Tên</strong>
                                <input type="text" name='name' class="form-control" value="{{ $user->name }}">
                            </div>
                            <div class="form-group">
                                <strong>Email</strong>
                                <input type="text" name='email' readonly
                                    class="form-control"value="{{ $user->email }} ">
                            </div>

                            <div class="form-group">
                                <strong>PassWord</strong>
                                <input type="password" name='password' class="form-control"value="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <strong>avatar</strong>
                                <input type="file" name='avatar' class="form-control" value="{{ $user->avatar }}">
                            </div>
                            <div class="form-group">
                                <strong>level</strong>
                                <input type="text" name='level' class="form-control" value="{{ $user->level }}">
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success mt-2">Lưu</button>
                </form>
            </div>
        </div>
    </div>
@endsection
