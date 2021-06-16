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
                    <p>{{$manga->titre}}</p>

                    <a href="{{ route('fini', ['idManga' => $manga->Id_Manga]) }}" class="btn-manga-fini">
                        Fini
                    </a>
                </div>
            </div>

            <div class="card-content" >
                @if($artiste_auteur != null)
                <h2>Auteur</h2><h3> {{ $artiste_auteur->nom }}, {{ $artiste_auteur->prenom }}</h3>
                
                @else
                    <h2>Auteur</h2><h3 class="text-danger"> Auteur inconnu </h3>
                @endif

                @if($artiste_auteur != null)
                    <h2>Dessinateur</h2><h3> {{ $artiste_dessinateur->nom }}, {{ $artiste_dessinateur->prenom }}</h3>
                @else
                    <h2>Dessinateur</h2><h3 class="text-danger"> Dessinateur inconnu </h3>
                @endif
                <h2>Note des utilisateurs : {{ $moyenneNoteManga }}</h2>
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
            @if($tomes != null)
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
            @else
                <h3 class="text-danger">Pas de Tomes pour ce manga !</h3>
            @endif
        </div>
    </section>

@endsection
