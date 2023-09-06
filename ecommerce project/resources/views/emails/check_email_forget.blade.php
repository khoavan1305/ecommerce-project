<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <div style="width: 500px;margin: 0 auto;padding: 15px;text-align: center">
        <h2>Hi {{ $user->name }}</h2>
        <p>
            Email này giúp bạn lấy lại mật khẩu
        </p>
        <p> Vui lòng click vào link dưới này để đặt lại mật khẩu!</p>
        <p>
            <a class="btn btn-primary" href="{{ route('get.pass', ['user' => $user->id, 'token' => $user->token]) }}">lấy
                lại
                mật khẩu</a>
        </p>
    </div>
</body>

</html>
