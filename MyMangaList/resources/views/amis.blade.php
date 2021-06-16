@extends('layouts.app')

@section('content')
    <div class="container ">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card bg-secondary border-light">
                    <div class="card-header border-light">{{ __('Amis de ') }} {{ Auth::user()->name }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <form action="{{ route('addFriend') }}" method="POST">
                            @csrf
                            <label for="users-list"><b>Choose a new friend</b></label>
                            <br>
                            <input list="user" id="users-list" oninput="console.log(this.value);"/>
                            <datalist id="user">
                                @foreach(\App\Utilisateur::all() as $user)
                                    @if($user->name != Auth::user()->name)
                                        <option id="{{$user->Id_Utilisateur}}" value="{{$user->Id_Utilisateur}}">{{$user->name}}</option>
                                    @endif
                                @endforeach
                            </datalist>
                            <input type="hidden" name="id" id="friend-id">

                            <input type="submit" value="Add friend">
                        </form>

                        @foreach($amis as $ami)
{{--                                {{dd($ami)}}--}}
                            <hr>
                            <div class="ami">
                                <div class="profile-image" style="position: relative; top: 0; left: 0;">
                                    @if ($ami->imageProfile != null)
                                        <img src="images/{{ $ami->imageProfile }}" class=" bg-light" width="50" height="50" />
                                    @else
                                        <img src="images/default.png" class="rounded-circle bg-light" width="50" height="50"/>
                                    @endif
                                </div>

                                <p>{{ $ami->name }}</p>

                            </div>
                        @endforeach
                    </div>
                </div>

{{--                <div class="profile-image">--}}
{{--                    <div class="hover-image"></div>--}}
{{--                    @if (Auth::user()->imageProfile != null)--}}
{{--                        <img src="images/{{ Auth::user()->imageProfile }}" class=" bg-light" width="300" height="300" />--}}
{{--                    @else--}}
{{--                        <img src="images/default.png" class="rounded-circle bg-light" width="300" height="300"/>--}}
{{--                    @endif--}}
{{--                </div>--}}

            </div>
        </div>
    </div>


    <script >
        document.querySelector('#users-list').addEventListener('input', event => {
            const value = event.target.value;
            const opt = [].find.call(event.target.list.options, o => o.value === value);

            if (opt) {
                document.querySelector('#friend-id').setAttribute('value', event.target.value);
                event.target.value = opt.textContent;
            }
        });
    </script>
@endsection
