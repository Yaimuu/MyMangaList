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

            <div class="container d-flex justify-content-center mt-200">
                <div class="row">
                    <div class="col-md-12">
                        <div class="stars">
                            <form action=""> <input class="star star-5" id="star-5" type="radio" name="star" /> <label class="star star-5" for="star-5"></label> <input class="star star-4" id="star-4" type="radio" name="star" /> <label class="star star-4" for="star-4"></label> <input class="star star-3" id="star-3" type="radio" name="star" /> <label class="star star-3" for="star-3"></label> <input class="star star-2" id="star-2" type="radio" name="star" /> <label class="star star-2" for="star-2"></label> <input class="star star-1" id="star-1" type="radio" name="star" /> <label class="star star-1" for="star-1"></label> </form>
                        </div>
                    </div>
                </div>
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
            </div>
            @endforeach
        </div>
    </section>

@endsection
