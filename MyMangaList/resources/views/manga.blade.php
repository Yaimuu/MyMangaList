@extends('layouts.layout')

@section('title')
   Information sur {{$manga->titre}}
@endsection

@section('content')


    <section class="manga-info">
        <div class="manga-card">
            
            <img src="{{$manga->image}}" alt="{{$manga->titre}}" />
            
            <div class="title">
                {{$manga->titre}}
            </div>
        </div>

        <div class="mangas-container">
            <p>Liste des tomes :</p>
            @foreach($tomes as $tome)
            <div class="manga-card">
                <img src="{{$tome->image}}" alt="{{$tome->nom}}" />
                <div class="title">
                    {{$tome->nom}}
                </div>
            </div>
            @endforeach
        </div>

        <div class="card-content" >

            <p>Auteur : {{ $artiste_auteur->nom }}, {{ $artiste_auteur->prenom }}</p>
            <p>Dessinateur : {{ $artiste_dessinateur->nom }}, {{ $artiste_dessinateur->prenom }}</p>

        </div>
    </section>

@endsection
