@extends('layouts.layout')

@section('title')
    {{$manga->titre}}
@endsection

@section('content')
    <div class="card">
        <header class="card-header">
            <h5 class="card-header-title">Titre : {{ $manga->titre }}</h5>
        </header>
        {{-- <div class="card-content">
            <div class="content">
                <p>Dessinateur : {{ $artiste_dessinateur->nom }}</p>
                <p>Scénariste : {{ $artiste_auteur->nom }}</p>

            </div>
        </div> --}}
    </div>
@endsection
