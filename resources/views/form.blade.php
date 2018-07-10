@extends('layout.newapp')

@section('body')

	
<div class="container">
	<div class="row">
		<center><h1>Test Form Validation</h1></center>
<br>
<br>
		<div class="col-lg-offset-4 col-lg-4">
			@include('todo.partials.errors')
			<form action="" method="post"> 
			{{csrf_field() }}
			<div class="form-group">
				
			<input type="text" class="form-control" name="name" placeholder="Name">

			</div>
			<div class="form-group">
				
			<input type="text" class="form-control" name="email" placeholder="Email">

			</div>

			<div class="form-group">
				
			<input type="submit" class="btn btn-success">

			</div>
				

			</form>
			
		</div>
	</div>
</div>
@endsection