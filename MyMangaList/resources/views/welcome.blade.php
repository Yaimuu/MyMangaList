@extends('layouts.layout')

@section('title')
    Accueil
@endsection


@section('sidebar')

@endsection

@section('content')

    <div class="container ">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card bg-secondary border-light">
                    <div class="card-header border-light">Informations</div>

                    <div class="card-body">
                        <p>
                            Site web créé à partir du Framework <b><a class="text-bold text-light text-decoration-none" href="https://laravel.com/">Laravel</a></b>
                            dans le cadre du cours ISI2 (Ingénierie Des Systèmes D'Information Niveau 2).
                        </p>

                        <p>
                            Notre site est une maquette s'inspirant du célèbre site
                            <b><a class="text-bold text-light text-decoration-none" href="https://myanimelist.net/">My Anime List</a></b> !
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
