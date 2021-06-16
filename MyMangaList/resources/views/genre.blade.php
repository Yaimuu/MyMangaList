@extends('layouts.layout')

@section('content')
    <div class="title m-b-md">
        Genre : {{ $genre->libelle }}
    </div>
    <div class="mangas-container">
        @foreach($mangas as $manga)

            <a href="{{ route('mangas.show', $manga->Id_Manga) }}" class="manga-card">

                <img src="{{$manga->image}}" alt="{{$manga->titre}}" />

                <div class="title">
                    {{$manga->titre}}
                </div>
            </a>


        @endforeach
    </div>
@endsection