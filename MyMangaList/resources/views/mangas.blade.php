@extends('layouts.layout')

@section('title')
    Mangas
@endsection


@section('sidebar')

@endsection

@section('content')
    <div class="mangas-container">
    @foreach($mangas as $manga)

        <div class="manga-card">
            <a href="{{ route('mangas.show', $manga->Id_Manga) }}">
                <img src="{{$manga->image}}" alt="{{$manga->titre}}" />
            </a>
            <div class="title">
                {{$manga->titre}}
            </div>
        </div>


    @endforeach
    </div>
@endsection

