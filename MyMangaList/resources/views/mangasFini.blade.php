@extends('layouts.app')

@section('content')
    <div class="container ">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card bg-secondary border-light">
                    <div class="card-header border-light">{{ __('Mangas fini de ') }} {{ Auth::user()->name }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        @foreach($mangasFini as $mangaFini)
{{--                                {{dd($mangaFini)}}--}}
                            <hr>
                            <div class="mangas-fini">

                                <img src="{{ \App\Manga::find($mangaFini->Id_Manga)->image }}" class="rounded-circle bg-light" width="50" height="50"/>


                                <p>{{ \App\Manga::find($mangaFini->Id_Manga)->titre }}</p>

                                <div class="star-wrapper" style="display: flex;">

                                    @for ($i = 1; $i <= 5; $i++)
                                        @guest
                                        @else
                                            @if( $mangaFini == null )
                                                <a href="{{ route('rate', ['grade'=>6-$i, 'idManga'=>$mangaFini->Id_Manga]) }}" class="fas fa-star s{{$i}}"></a>
                                            @elseif($mangaFini->note >= 6-$i)
                                                <a href="{{ route('rate', ['grade'=>6-$i, 'idManga'=>$mangaFini->Id_Manga]) }}" class="fas fa-star s{{$i}}" style="color: gold;"></a>
                                            @else
                                                <a href="{{ route('rate', ['grade'=>6-$i, 'idManga'=>$mangaFini->Id_Manga]) }}" class="fas fa-star s{{$i}} "></a>
                                            @endif
                                        @endguest
                                    @endfor
                                </div>

                            </div>
                        @endforeach
                    </div>
                </div>

{{--                <div class="profile-image">--}}
{{--                    <div class="hover-image"></div>--}}
{{--                    @if (Auth::user()->imageProfile != null)--}}
{{--                        <img src="images/{{ Auth::user()->imageProfile }}" class=" bg-light" width="300" height="300" />--}}
{{--                    @else--}}
{{--                        <img src="images/default.png" class="rounded-circle bg-light" width="300" height="300"/>--}}
{{--                    @endif--}}
{{--                </div>--}}

            </div>
        </div>
    </div>


    <script >
        document.querySelector('#users-list').addEventListener('input', event => {
            const value = event.target.value;
            const opt = [].find.call(event.target.list.options, o => o.value === value);

            if (opt) {
                document.querySelector('#friend-id').setAttribute('value', event.target.value);
                event.target.value = opt.textContent;
            }
        });
    </script>
@endsection
