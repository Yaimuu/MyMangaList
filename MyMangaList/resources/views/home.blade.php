@extends('layouts.app')
{{--{{dd(Auth::user())}}--}}
@section('content')
<div class="container ">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card bg-secondary border-light">
                <div class="card-header border-light">{{ __('Profil de ') }} {{ Auth::user()->name }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <br>

                    <form action="{{ route('addFriend') }}" method="POST">
                        @csrf
                        <label for="users-list"><b>Choose a new friend</b></label>
                        <br>
                        <input list="user" id="users-list" name="user" />
                        <datalist id="user">
                            @foreach(\App\Utilisateur::all() as $user)
                                <option id="{{$user->Id_Utilisateur}}" value="{{$user->name}}">{{$user->name}}</option>
                                @if($user->name != Auth::user()->name)
{{--                                    <option value="{{$user->Id_Utilisateur}}">{{$user->name}}</option>--}}
                                    <option value="{{$user->name}}">{{$user->Id_Utilisateur}}</option>
                                @endif
                            @endforeach
                        </datalist>
                        <input type="submit" value="Add friend">
                    </form>
                </div>
            </div>

            <div class="profile-image">
                <div class="hover-image"></div>
                @if (Auth::user()->imageProfile != null)
                    <img src="images/{{ Auth::user()->imageProfile }}" class=" bg-light" width="300" height="300" />
                @else
                    <img src="images/default.png" class="rounded-circle bg-light" width="300" height="300"/>
                @endif
            </div>

        </div>
    </div>
</div>
@endsection
