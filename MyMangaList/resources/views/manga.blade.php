@extends('layouts.layout')

@section('title')
   Information sur {{$manga->titre}}
@endsection

@section('content')
    <div class="card">

        @foreach ($tomes as $tome)
            <p>{{ $tome->nom }}</p>
        @endforeach

        <section class="manga-info">
            <div class="manga-card">
                
                <img src="{{$manga->image}}" alt="{{$manga->titre}}" />
                
                <div class="title">
                    {{$manga->titre}}
                </div>
            </div>
            <div class="card-content" >
                <div class="content">
                    <p>Auteur : {{ $artiste_auteur->nom }}, {{ $artiste_auteur->prenom }}</p>
                    <p>Dessinateur : {{ $artiste_dessinateur->nom }}, {{ $artiste_dessinateur->prenom }}</p>
                </div>
            </div>
        </section>
    </div>
@endsection
