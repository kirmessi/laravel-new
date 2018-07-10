@extends('layout.newapp')

@section('body')

  <table class="table table-bordered">
    <thead>
      <tr>
      	<th>Number</th>
         <th>LatName</th>
	
      </tr>
    </thead>
    <tbody>
   @foreach ($users->test() as $lastname)
      <tr>
      <td>{{$loop->index+1}}</td>
   
        <td>{{$lastname->lastname}}</td>
    

       
      </tr>
    	@endforeach

   </tbody>
  </table>
{{$users->test()->links()}}
@endsection