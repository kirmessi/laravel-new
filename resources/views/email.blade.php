 {{-- @component('mail::message') --}}
# Introduction

 {{-- The body of your message. --}}

 {{-- @component('mail::button', ['url' => '']) --}}
 {{-- Button Text --}}
 {{-- @endcomponent --}}

 {{-- @component('mail::panel') --}}
 {{-- This is the panel content. --}}
 {{-- @endcomponent --}}

 {{-- @component('mail::table') --}}
 {{-- | Laravel       | Table         | Example  | --}}
 {{-- | ------------- |:-------------:| --------:| --}}
 {{-- | Col 2 is      | Centered      | $10      | --}}
 {{-- | Col 3 is      | Right-Aligned | $20      | --}}
 {{-- @endcomponent --}}

 {{-- Thanks,<br> --}}
 {{-- {{ config('app.name') }} --}}
 {{-- @endcomponent --}}


 <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
<br>
<h1>Send Mail</h1>
	
	<form action="send" method="post">
		{{csrf_field()}}
		to: <input type="text" name="to">
		message: <textarea name="message"  cols="30" rows="10"></textarea>
		<input type="submit" value="Send">
	</form>
</body>
</html>





