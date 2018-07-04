@extends ('layout.app')
@section('title','Welcome')
@section('body')
Welcome {{$user->name}}
@foreach($mobiles as $mobile)
{{$mobile->number}}
@endforeach
@endsection