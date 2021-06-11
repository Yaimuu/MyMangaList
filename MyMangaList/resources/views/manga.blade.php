@extends('layouts.layout')

@section('title')
   Information sur {{$manga->titre}}
@endsection

@section('content')
    <div class="card">
        <header class="card-header">
            <h5 class="card-header-title">Titre : {{ $manga->titre }}</h5>
            {{--<p>Auteur : {{$artiste_auteur->prenom}}  {{$artiste_auteur->nom}}</p>
            <p>Dessinateur : {{$artiste_dessinateur->prenom}}  {{$artiste_dessinateur->nom}}</p>--}}
            <p>Liste des tomes :</p> 
            <div class="manga-container">
            @foreach($tomes as $tome)
            <div class="manga-card">
                <img src="{{$tome->image}}" alt="{{$tome->nom}}" />
                <div class="title">
                    {{$tome->nom}}
                </div>
            </div>
            @endforeach
            </div>
            
        </header>
        {{-- <div class="card-content">
            <div class="content">
                <p>Dessinateur : {{ $artiste_dessinateur->nom }}</p>
                <p>Scénariste : {{ $artiste_auteur->nom }}</p>

            </div>
        </div> --}}
        

    </div>
@endsection
