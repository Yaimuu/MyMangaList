@extends('layouts.layout')

    <link href="css/manga.css" type="text/css" rel="stylesheet">

    @section('content')
        <div class="container">
            
        
            @foreach ($mangas as $manga)
                <div class="col-md-4">
                    <div class="manga-card">
                        
                        <img src="{{ $manga->image }}" class="img img-responsive">
                        
                        <div class="profile-name">{{ $manga->titre }}</div>
                    </div>
                </div>
            @endforeach
        </div>
    @endsection


