<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseManager"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User</title>
	<link rel="stylesheet" href="TrainCSS.css">
	<style>
		.menu1{
			border:1px black solid;
			border-radius: 13px;
			background-color: white;
			color:green;
			font-weight: bold;
			font-size:20px;
			text-align: center;
			margin-right:-60px;
			padding:2px;
			padding-left: 20px;
			padding-right: 20px;
			width:130px;
		}		
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
    
<form action="ticketConfirmm" class="tab red" method="post">
                    
                            <%
                            String msg=request.getParameter("msg");
                            if("invalid".equals(msg))
                            {
                            %>
                            <p class="text-danger">Something went wrong!! Try Again</p>
                            <%} %>
                            <%
                            String cabin=request.getParameter("cabin");
                            String seat=request.getParameter("seat");
                            HttpSession session2 = request.getSession();
                            session2.setAttribute("cabin", cabin);
                            session2.setAttribute("seat", seat);
                            %>
                Fare: <input type="text" name="fare" value="<%=(String)request.getSession().getAttribute("fare")%>" disabled><br/>
                Cabin: <input type="text" name="cabin" value="<%=cabin%>" disabled><br/>
                seat: <input type="text" name="seat" value="<%=seat%>" disabled><br/><br/>
                
                Date: <input type="text" name="date1" value="mm-dd-yyyy"><br/>
                
		<br/><input type="submit" value=" Pay And Book "><br/>
	</form><br/>

</body>
</html>