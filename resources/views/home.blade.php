<head>
    <title>Home Log Servis Gamma</title>
    <link rel="icon" href="asset/img/icon.png">
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="asset/css/fontawesome/all.min.css">
    <link rel="stylesheet" type="text/css" href="asset/js/datatables/dataTables.bootstrap4.css">
</head>

    <style>
        body
        {
            background: url( {{'asset/img/image.png'}} ) no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }
    </style>

<div class="container">
    <h1 class="text-white">Selamat Datang {{ Auth::user()->name }}, Di Isekai</h1>
    <a href="{{ route('logout') }}"><button class="btn btn-danger"><i class="fas fa-sign-out-alt"></i> Logout</button></a>
</div>
