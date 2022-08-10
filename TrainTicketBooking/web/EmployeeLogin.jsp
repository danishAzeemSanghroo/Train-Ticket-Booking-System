<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LOGIN</title>
	<style>
		*{
			box-sizing: border-box;
		}
		body{
			background-image: url(trainPic1.jpg);
			background-repeat: no-repeat;
			margin-left:10%;
			margin-right:10%;
                        background-size: cover;
                        -webkit-background-size: cover;
                        -moz-background-size: cover;
                        -o-background-size: cover;
                          margin: 0;
        padding: 0;
		}
		.hd{
                        border:1px blue solid;
			background-color: #FFE5CC;
			border-radius: 5px;
			text-align: center;
			padding:15px;
			margin-left:27%;
			margin-right: 30.3%;
			color:blue;
			font-weight: bold;
			font-size:40px;
		}
		.main{
			border:1px blue solid;
			background-color: #FFE5CC;
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
		border-radius: 15px;
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
	footer{
		margin-top: 15%;
	}
	</style>
</head>
<body>
<header>
	<h1 class="hd">Train Ticket Booking System</h1>
	<div class="main">
		<p1 class="menu"><a href="UserLogin.jsp">Login as User</a></p1>
		<p1 class="menu"><a href="UserRegister.jsp">New User Register</a></p1>
		<p1 class="menu"><a href="AdminLogin.jsp">Login as Admin</a></p1>
                <p1 class="menu"><a href="EmployeeLogin.jsp">Login as Employee</a></p1>
        </div>
</header>
<div class="tab green">Employee Login</div>

<form action="emplogin" class="tab brown" method="post">
            <%
            String msg=request.getParameter("msg");
            if("invalid".equals(msg))
            {
            %>
            <p class="text-danger">Something went wrong! Try Again</p>
            <%} %>
		<br/>UserName: <input type="text" name="empName"><br/><br/>
		Password: <input type="password" name="empPassword"><br/><br/>
		<input type="submit" value=" LOGIN "><br/>

	</form><br/>

</body>
</html>