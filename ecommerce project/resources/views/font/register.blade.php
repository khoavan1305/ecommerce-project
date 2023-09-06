@extends('font.layouts.master')
@section('title', 'Register')
@section('body')
    <br> <br> <br>

    <body class="">

        <main class="main">

            <div class="content">

                <div class="container-fluid pb-5">

                    <div class="row justify-content-md-center">
                        <div class="card-wrapper col-12 col-md-4 mt-5">
                            <div class="brand text-center mb-3">
                                <a href="/"><img src="fonts/images/icons/logo-01.png"></a>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Tạo tài khoản</h4>
                                    @if ($errors->any())
                                        @foreach ($errors->all() as $err)
                                            <p class="alert alert-danger">{{ $err }}</p>
                                        @endforeach
                                    @endif
                                    <form action="{{ route('register.action') }}" method="POST">
                                        @csrf

                                        <div class="form-group">
                                            <label for="name">Tên</label>
                                            <input type="text" class="form-control" id="name"
                                                name="name"value="{{ old('name') }}" required="" autofocus="">
                                            <em>
                                                @error('first_name')
                                                    {{ $message }}
                                                @enderror
                                            </em>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">Địa chỉ E-Mail</label>
                                            <input id="email" type="email" class="form-control"
                                                name="email"value="{{ old('email') }}" required="">
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="password">Mật khẩu
                                                </label>
                                                <input id="password" type="password" class="form-control" name="password"
                                                    required="">

                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="password-confirm">Xác nhận mật khẩu
                                                </label>
                                                <input id="password-confirm" type="password" class="form-control"
                                                    name="password_confirm" required="">

                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="avatar">Ảnh đại diện
                                                </label>
                                                <input id="avatar" type="file" class="form-control" name="avatar"
                                                    value="{{ old('avatar') }}">
                                            </div>
                                        </div>
                                        <div class="form-group no-margin">
                                            <button type="submit" class="btn btn-primary btn-block">
                                                Đăng ký
                                            </button>
                                        </div>
                                        <div class="text-center mt-3 small">
                                            Bạn đã có tài khoản? <a href="{{ route('login') }}">Đăng nhập</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <footer class="footer mt-3">
                                <div class="container-fluid">
                                    <div class="footer-content text-center small">
                                        <span class="text-muted">&copy; 2023 COZA STORE.</span>
                                    </div>
                                </div>
                            </footer>
                        </div>
                    </div>



                </div>

            </div>
        </main>

    </body>



@endsection
