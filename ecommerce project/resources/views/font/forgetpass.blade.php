@extends('font.layouts.master')
@section('title', 'ForgetPassword')
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
                                    <h4 class="card-title">Lấy lại mật khẩu</h4>
                                    @if (session('success'))
                                        <p class="alert alert-success">{{ session('success') }}</p>
                                    @endif
                                    @if ($errors->any())
                                        @foreach ($errors->all() as $err)
                                            <p class="alert alert-danger">{{ $err }}</p>
                                        @endforeach
                                    @endif
                                    <form action="{{ route('forget.pass.action') }}" method="POST">
                                        @csrf
                                        <div class="form-group">
                                            <label for="email">Địa chỉ E-Mail </label>
                                            <input id="email" type="email" class="form-control" name="email"
                                                required="" autofocus="">
                                        </div>
                                        <div class="form-group no-margin">
                                            <button type="submit" class="btn btn-primary btn-block">
                                                Gửi E-Mail
                                            </button>
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
