<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User</title>
	<link rel="stylesheet" href="TrainCSS.css">
	<style>
		
	</style>
</head>
<body>
<header>
	<h1 class="hd">Train Ticket Booking System</h1>
	<div class="home">
		<p1 class="menu"><a href="UserHome.jsp">Home</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="Availibility.jsp">Availability</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="BookTicket.jsp">Ticket Book</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="Cancel.jsp">Register/Cancel</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="UserLogin.jsp">Logout</a></p1>
	</div>        
</header>
    
<div class="tab"><p1 class="menu">Availibility Trains Between Stations</p1></div>

<form action="Availibility" class="tab red" method="post">
                    
                            <%
                            String msg=request.getParameter("msg");
                            if("invalid".equals(msg))
                            {
                            %>
                            <p class="text-danger">No Seat Availible </p>
                            <%} %>
                            <%
                                if("success".equals(msg))
                                {
                            %>
                             <p1 class="menu">Yes Availible</p1> 
                             <%}%><br/>
                 
		Departure Place: <input type="text" name="from"><br/><br/>
		Arrival Place: <input type="text" name="to"><br/><br/>
                Date: <input type="text" name="date"><br/><br/>
		<input type="submit" value=" Check "><br/>
	</form><br/>

</body>
</html>