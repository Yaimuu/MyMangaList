@extends('layouts.app')
{{--{{dd(Auth::user())}}--}}
@section('content')
<div class="container ">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card bg-secondary border-light">
                <div class="card-header border-light">{{ __('Profile de ') }} {{ Auth::user()->name }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}

                    <br>


                    @if (Auth::user()->imageProfile != null)
                            <img src="images/{{ Auth::user()->imageProfile }}" />
                    @else
                            <img src="images/default.png" width="200" height="200"/>
                    @endif




                </div>


            </div>
        </div>
    </div>
</div>
@endsection
