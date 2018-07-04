@extends('layout.newapp')

@section('body')

<br>
@include('todo.partials.message')
<a href="http://127.0.0.1:8000/todo/create" class="btn btn-info">Add New</a>	
<div class="col-lg-6 col-lg-offset-3">
	<center><h1>Form</h1></center>

	<ul class="list-group col-lg-8">

   @foreach ($todos as $todo) 
     <li class="list-group-item d-flex justify-content-between align-items-center">
	<a href="{{'/todo/'.$todo->id}}">{{$todo->title}}</a>
	<span class="pull-right">{{$todo->created_at->diffForHumans()}}</span>
	 </li>
   @endforeach
   
</ul>

	<ul class="list-group col-lg-4">

   @foreach ($todos as $todo) 
     <li class="list-group-item d-flex justify-content-between align-items-center">
	<a href="{{'/todo/'.$todo->id.'/edit'}}"><i class="fas fa-edit"></i></a>
<form class="form-goup pull-right" action="{{'/todo/'.$todo->id}}" method="post">
{{csrf_field()}}
{{method_field('DELETE')}}
<button type="submit" style="border:none;"><i class="fas fa-trash-alt"></i></button>
</form>
	 </li>
   @endforeach
   
</ul>
</div>


@endsection
