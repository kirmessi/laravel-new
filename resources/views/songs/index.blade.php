@extends('layout.app')

@section ('title', 'Songs')

@section('body')


@foreach ($songs as $song)
{{$song->title}}
@endforeach
@endsection