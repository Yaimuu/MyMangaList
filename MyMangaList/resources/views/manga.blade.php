@extends('layouts.layout')

@section('title')
   Information sur {{$manga->titre}}
@endsection

@section('content')
    <div class="card">
        <header class="card-header">
            <h5 class="card-header-title">Titre : {{ $manga->titre }}</h5>
            @foreach($tomes as $tome)
                <img src="{{$tome->image}}" alt="{{$tome->nom}}" />
            @endforeach
            <p>Nom auteur :</p>
        </header>
        {{-- <div class="card-content">
            <div class="content">
                <p>Dessinateur : {{ $artiste_dessinateur->nom }}</p>
                <p>Scénariste : {{ $artiste_auteur->nom }}</p>

            </div>
        </div> --}}
        

    </div>
@endsection
