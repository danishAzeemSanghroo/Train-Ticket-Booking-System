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
		<p1 class="menu"><a href="useravailfwd">Availability</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="TrainBwStn.jsp">Trains Bw Stn</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="Fare.jsp">Fare Enquiry</a></p1>
	</div>
<!--	<div class="home">
		<p1 class="menu"><a href="userprofile">Profile</a></p1>
	</div>-->
	<div class="home">
		<p1 class="menu"><a href="userlogout">Logout</a></p1>
	</div>

</header>
<div class="tab"><p1 class="menu">Trains Between Stations</p1></div>
<form action="trainbwstn" class="tab red" method="post">
		From Station: <input type="text" name="fromstation"><br/><br/>
		To Station: <input type="text" name="tostation"><br/><br/>
		<input type="submit" value=" SEARCH TRAIN "><br/>
	</form><br/>

</body>
</html>