@extends('layouts.layout')

@section('title')
   Information sur {{$manga->titre}}
@endsection

@section('content')

    @if(session()->has('info'))
        <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
            <div class="card-body">
                <p class="card-text">{{ session('info') }}</p>
            </div>
        </div>
    @endif

    <section class="manga-info">
        <div class="manga-general">
            <div class="manga-card" style="margin: 0 1em 0 0;">
                <img src="{{$manga->image}}" alt="{{$manga->titre}}" />

                <div class="title">
                    {{$manga->titre}}
                </div>
            </div>

            <div class="card-content" >
                <h2>Auteur</h2><h3> {{ $artiste_auteur->nom }}, {{ $artiste_auteur->prenom }}</h3>
                <h2>Dessinateur</h2><h3> {{ $artiste_dessinateur->nom }}, {{ $artiste_dessinateur->prenom }}</h3>
            </div>

            <div class="star-wrapper">
                @for ($i = 1; $i <= 5; $i++)
                    @guest
                    @else
                        @if( $grade == null )
                            <a href="{{ route('rate', ['grade'=>6-$i, 'idManga'=>$manga->Id_Manga]) }}" class="fas fa-star s{{$i}}"></a>
                        @elseif($grade->note >= 6-$i)
                            <a href="{{ route('rate', ['grade'=>6-$i, 'idManga'=>$manga->Id_Manga]) }}" class="fas fa-star s{{$i}}" style="color: gold;"></a>
                        @else
                            <a href="{{ route('rate', ['grade'=>6-$i, 'idManga'=>$manga->Id_Manga]) }}" class="fas fa-star s{{$i}} "></a>
                        @endif
                    @endguest
                @endfor
            </div>
        </div>

        <p style="font-size: 3em;">Tomes</p>

        <div class="mangas-container" style="justify-content: center;">
            @foreach($tomes as $tome)
            <div class="manga-card" style="margin: 1em; ">
                <img src="{{$tome->image}}" alt="{{$tome->nom}}" />
                <div class="title">
                    {{$tome->nom}}
                </div>
                <div class="date">
                    {{$tome->dateParution}}
                </div>
            </div>
            @endforeach
        </div>
    </section>

@endsection
