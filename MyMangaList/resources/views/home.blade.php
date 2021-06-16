@extends('layouts.app')

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

                    <a class="text-light text-bold tex" href="{{ route("amis") }}"> Amis </a>

{{--                    <form action="{{ route('addFriend') }}" method="POST">--}}
{{--                        @csrf--}}
{{--                        <label for="users-list"><b>Choose a new friend</b></label>--}}
{{--                        <br>--}}
{{--                        <input list="user" id="users-list" name="user" oninput="console.log(this.value);"/>--}}
{{--                        <datalist id="user">--}}
{{--                            @foreach(\App\Utilisateur::all() as $user)--}}
{{--                                <option id="{{$user->Id_Utilisateur}}" name="{{$user->Id_Utilisateur}}" value="{{$user->name}}">{{$user->name}}</option>--}}
{{--                                @if($user->name != Auth::user()->name)--}}
{{--                                    <option value="{{$user->Id_Utilisateur}}">{{$user->name}}</option>--}}
{{--                                    <option value="{{$user->name}}">{{$user->Id_Utilisateur}}</option>--}}
{{--                                    <option id="{{$user->Id_Utilisateur}}" value="{{$user->Id_Utilisateur}}">{{$user->name}}</option>--}}
{{--                                    <option type="hidden" value="{{$user->Id_Utilisateur}}">{{$user->name}}</option>--}}
{{--                                @endif--}}
{{--                            @endforeach--}}
{{--                        </datalist>--}}
{{--                        <input type="hidden" name="id" id="friend-id">--}}

{{--                        <input type="submit" value="Add friend">--}}
{{--                    </form>--}}
                </div>
            </div>

            <div class="profile-image">
                <div class="hover-image"></div>
                @if (Auth::user()->imageProfile != null)
                    <img src="images/{{ Auth::user()->imageProfile }}" class=" bg-light" width="130" height="130" />
                @else
                    <img src="images/default.png" class="rounded-circle bg-light" width="130" height="130"/>
                @endif
            </div>

        </div>
    </div>
</div>


{{--    <script >--}}
{{--        document.querySelector('#users-list').addEventListener('input', event => {--}}
{{--            const value = event.target.value;--}}
{{--            const opt = [].find.call(event.target.list.options, o => o.value === value);--}}

{{--            if (opt) {--}}
{{--                document.querySelector('#friend-id').setAttribute('value', event.target.value);--}}
{{--                event.target.value = opt.textContent;--}}
{{--            }--}}
{{--        });--}}
{{--    </script>--}}
@endsection
