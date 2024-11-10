<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>
    @include('custom.bootstrap5')
</head>
<body class="d-flex flex-column min-vh-100">
    <div class="container-fluid flex-grow-1">

        {{-- baris1 header/navbar --}}
        @include('layout.header')

        {{-- baris2 konten --}}
        @yield('konten')
        <style>
            html, body {
                height: 100%;
                margin: 0;
            }
            body{
                background-color: #eef7e8;
                display: flex;
                flex-direction: column;
            }

        </style>

    </div>

    {{-- Sticky footer --}}
    @include('layout.footer')


</body>
</html>
