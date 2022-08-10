<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseManager"%>
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
		}
		.hd{
                        border:1px blue solid;
			background-color: #FFE5CC;
			border-radius: 5px;
			text-align: center;
			padding:15px;
			margin-left:30%;
			margin-right: 25.3%;
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

<div class="tab green">Report</div>

	<table class="tab green" border="0px">
            <%
            
            try{
                String seat=request.getParameter("seat");
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from ticket2 where seat='"+seat+"' ");
                            while(rs.next())
                            {
                                  
            %>            
                    <thead>
                      <tr>
                        <th scope="col">Ticket ID</th>
                        <td><%=rs.getInt(1) %></td>
                      </tr>
                        <tr>
                        <th scope="col">Train</th>
                        <td><%=rs.getString(2) %></td>
                        </tr>
                        <tr>
                        <th scope="col">Username</th>
                        <td><%=rs.getString(3) %></td>
                      </tr>
                        <tr>
                        <th scope="col">Departure Place</th>
                        <td><%=rs.getString(4) %></td>
                        </tr>
                        <tr>
                        <th scope="col">Arrival Place</th>
                        <td><%=rs.getString(5) %></td>
                      </tr>
                        <tr>
                        <th scope="col">Cabin</th>
                        <td><%=rs.getString(6) %></td>
                        </tr>
                        <tr>
                        <th scope="col">Seat</th>
                        <td><%=rs.getString(7) %></td>
                      </tr>
                        <tr>
                        <th scope="col">Payment</th>
                        <td><%=rs.getString(8) %></td>
                        </tr>
                        <tr>
                        <th scope="col">Date</th>
                        <td><%=rs.getString(9) %></td>
                        </tr>
                        
                      </tr>
                    </thead>
                    <tbody>

                        

                  
            <% 		}
            }catch(Exception e)
            {
            System.out.println(e);	
            }
            %>         
                    </tbody>
	</table>

<div class="tab green"><p1 class="menu"><a href="UserHome.jsp">Done</a></p1></div>                    
     


</body>
</html>