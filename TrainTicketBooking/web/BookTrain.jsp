<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LOGIN</title>
	<link rel="stylesheet" href="TrainCSS.css">
	<style>
		
	</style>
</head>
<body>
<header>
	<h1 class="hd">Train Ticket Booking System</h1>
	<div class="home">
		<p1 class="menu"><a href="userhome">Home</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="userviewtrainfwd">View Trains</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="usersearchtrain">Search Trains</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="booktrainfwd">Book Trains</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="useravailfwd">Availability</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="trainbwstnfwd">Trains Bw Stn</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="fareenqfwd">Fare Enquiry</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="userprofile">Profile</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="userlogout">Logout</a></p1>
	</div>

	
</header>
<div class="tab"><p1 class="menu">Book trains</p1></div>
<div class="tab"><p1 class="menu red">Please Check The <a href='Availability.html'>Seat availability</a> before Booking !</p1></div>
<form action="booktrains" class="tab red" method="post">
		TrainNumber: <input type="text" name="trainnumber"><br/><br/>
		No of seats:  <input type='text' name='seats'><br/><br/>
		<input type="submit" value=" Book Now "><br/>
	</form><br/>

</body>
</html>