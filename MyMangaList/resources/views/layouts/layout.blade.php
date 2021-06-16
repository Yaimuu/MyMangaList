<html>
    <head>
        <meta charset="utf-8">
        <title>My Manga List - @yield('title')</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>MyMangaList</title>

        @yield('links')

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="{{ URL::asset('css/main.css') }}" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

    </head>

    <body>
        <nav class="nav">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth

                        <a href="{{ url('/home') }}">

                            <div class="profile-image" style="position: relative; top: 0; left: 0;">
                                @if (Auth::user()->imageProfile != null)
                                    <img src="images/{{ Auth::user()->imageProfile }}" class="bg-light" width="25" height="25" />
                                @else
                                    <img src="images/default.png" class="rounded-circle bg-light" width="25" height="25"/>
                                @endif
                            </div>

                            {{ Auth::user()->name }}
                        </a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="links">
                <a href="/">Accueil</a>
                <a href="{{ route('mangas') }}">Mangas</a>
                @guest

                @else

                @endguest
            </div>

        @yield('sidebar')

        </nav>

        <div class="content">
            <div class="banner"><div></div></div>
            <div class="title m-b-md">
                My Manga List
            </div>
        </div>

        <main>
            @yield('content')
        </main>

        <footer>
            MyMangaList - copyright 3AInfo - 2021
        </footer>

    </body>

    <script src="https://kit.fontawesome.com/5ea815c1d0.js"></script>
</html>
