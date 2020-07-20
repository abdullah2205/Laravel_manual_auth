<!DOCTYPE html>
<html>
    <head>
        <!--<title>Daftar Log Servis Gamma</title>-->
        <!--<link rel="icon" href="asset/img/icon.png">-->
        <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="asset/css/fontawesome/all.min.css">
        <!--<link rel="stylesheet" type="text/css" href="asset/js/datatables/dataTables.bootstrap4.css">-->
    </head>

    <style>
        body
        {
            background: url( {{'asset/img/image.png'}} ) no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }
    </style>

	<body>
        <div class="container mt-4 pt-4">
            <div class="text-white bg-transparent">
                <div class="container">
                    <h1 class="text-center judul text-success"><strong>Selamat Datang</strong></h1>
                </div>
            </div>
        </div>
        <div class="container mt-4">
            <div class="w-50 m-auto">
                <div class="card pb-3">
                    <div class="card-title text-center mt-3">
                        <h3 class="text-center mt-2">Register {{ config('app.name') }}</h3> 
                    </div>
                    <div class="card-body">
                        <form class="form-signin"  method="POST" action="{{ route('register') }}">
                            {{ csrf_field() }}
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-user"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control py-3 {{ $errors->has('name') ? 'is-invalid' : '' }}" placeholder="Your name" name="name" id="inputName" value="{{ old('name') }}" required autofocus autocomplete='off'>
                                @if ($errors->has('name'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('name') }}
                                    </div>
                                @endif
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                </div>
                                <input type="email" class="form-control py-3 {{ $errors->has('email') ? 'is-invalid' : '' }}" placeholder="Email address" name="email" id="inputEmail" value="{{ old('email') }}" required autofocus autocomplete='off'>
                                @if ($errors->has('email'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('email') }}
                                    </div>
                                @endif
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-key"></i>
                                    </span>
                                </div>
                                <input type="password" class="form-control py-3 {{ $errors->has('password') ? 'is-invalid' : '' }}" placeholder="Password" name="password" id="inputPassword" required >
                                @if ($errors->has('password'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('password') }}
                                    </div>
                                @endif
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-key"></i>
                                    </span>
                                </div>
                                <input type="password" class="form-control py-3 {{ $errors->has('password_confirmation') ? 'is-invalid' : '' }}" placeholder="Password Confirmation" name="password_confirmation" id="inputPassword" required >
                                @if ($errors->has('password_confirmation'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('password_confirmation') }}
                                    </div>
                                @endif
                            </div>
                            <button class="btn btn-success" name="login"> <i class="fas fa-sign-in-alt"></i> Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
	</body>
</html>
