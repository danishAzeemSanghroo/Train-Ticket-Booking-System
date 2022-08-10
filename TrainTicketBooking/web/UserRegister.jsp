<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Register</title>
	<style>
		*{
			box-sizing: border-box;
		}
		body{
			background-image: url(trainPic1.jpg);
			background-repeat: no-repeat;
			margin-left:10%;
			margin-right:10%;
		}
		.hd{
                        border:1px blue solid;
			background-color: #FFE5CC;
			border-radius: 5px;
			text-align: center;
			padding:15px;
			margin-left:26%;
			margin-right: 21.3%;
			color:blue;
			font-weight: bold;
			font-size:40px;
		}
		.main{
			border:1px blue solid;
			background-color: #FFE5CC ;
			border-radius: 5px;
			text-align: center;
			margin-left:22%;
			margin-right: 33.3%;
			padding:10px;
			margin-bottom: 10px;
			width:700px;
			color:red;
		}
		.menu{
			border:1px black solid;
			border-radius: 13px;
			background-color: white;
			color:green;
			font-weight: bold;
			font-size:18px;
			text-align: center;
			margin-right:15px;
			padding:5px;
			padding-left: 10px;
			padding-right: 10px;
			width:130px;
		}
		a:hover{
		color:red;
	}
	a:link{
		color: green;
		text-decoration: none;
	}
	.tab{
		border:1px black solid;
		border-radius: 2px;
		background-color: #FFE5CC;
		margin-left: 30%;
		width:450px;
		color:red;
		font-weight: bold;
		font-style:normal;
		text-align:center;
		font-size: 22px;
		margin-bottom:10px;
		padding:10px;
	}
	.yel{
	color:yellow;
	}
	.red{
		color:red;
	}
	.green{
		color:green;
	}
	.brown{
		color:brown;
	}
	.blue{
		color:blue;
	}
	</style>
</head>
<body>
<header>
	<h1 class="hd">Train Ticket Booking System</h1>
	<div class="main">
		<p1 class="menu"><a href="UserLogin.jsp">Login as User</a></p1>
		<p1 class="menu"><a href="UserRegister.jsp">New User</a></p1>
		<p1 class="menu"><a href="AdminLogin.jsp">Login as Admin</a></p1>
                <p1 class="menu"><a href="EmployeeLogin.jsp">Login as Employee</a></p1>
        </div>
</header>
<table class="tab brown hd">
		<tr>
			<td>New User Registration</td>
		</tr>
	</table>

	<table class="tab green" border="0px">
		
		<tr>
			<td>
				<form action="userreg" method="post">
                                                <%
                                                    String msg=request.getParameter("msg");
                                                    if("success".equals(msg))
                                                    {
                                                    %>
                                                    <p class="text-success">Successfully Registered User</p>
                                                    <%}%>
                                                    <%
                                                    if("invalid".equals(msg))
                                                    {
                                                    %>
                                                    <p class="text-danger">Something went wrong! Try Again</p>
                                                    <%} %>
					Username : <input type="text" name="uname" placeholder="Enter Username" required><br/><br/>
					Password : <input type="password" name="pword" required><br/><br/>
					Addrress : <input type="text" name="address" required><br/><br/>
					Phone No : <input type="number" name="phoneno" required><br/><br/>
					Email Id : <input type="email" name="mailid" required><br/><br/>
					
					<input type="submit" value=" I AGREE FOR ALL TERMS & CONDITIONS ! REGISTER ME " text-align="center">
				</form>
			</td>
			
		</tr>  
	</table>
	
	</div>

</body>
</html>