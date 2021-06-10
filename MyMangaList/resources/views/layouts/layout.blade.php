<html>
    <head>
        <meta charset="utf-8">
        <title>My Manga List - @yield('title')</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>MyMangaList</title>

        <link rel="stylesheet" type="text/css" href="css/main.css" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

    </head>

    <body>
        <nav class="">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
        </nav>
        @section('sidebar')
            This is the master sidebar.
        @show

        <div class="content">
            <div class="title m-b-md">
                My Manga List
            </div>

            <div>

            </div>
        </div>

        <div class="container">
            @yield('content')
        </div>

        <footer>
            MyMangaList - copyright 3AInfo - 2021
        </footer>

    </body>
</html>
