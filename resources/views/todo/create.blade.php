@extends('layout.newapp')
@section('body')

<br>
<a href="/todo" class="btn btn-info">Back</a>
<div class="col-lg-4 col-lg-offset-4">
	<h1>Create New Item</h1>
	<form action="/todo" method="POST">
	{{csrf_field()}}
  <fieldset>
   <div class="form-group">
  
    <input type="text" name="title" class="form-control" placeholder="title">
    </div>

    <div class="form-group">

      <textarea class="form-control" name="body" id="exampleTextarea" placeholder="message" rows="3"></textarea>
    </div>

   
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
<br>
@include('todo.partials.errors')
</div>
@endsection