<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DatabaseManager"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin</title>
	<link rel="stylesheet" href="TrainCSS.css">

</head>
<body>
<header>
	<h1 class="hd">Train Ticket Booking System</h1>
        
	<div class="home">
		<p1 class="menu"><a href="AdminHome.jsp">Home</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="RegisterEmployees.jsp">Register Employees</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="AddTrain.jsp">Manage Train</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="ManageSchedule.jsp">Manage Schedule</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="ManageUser.jsp">Manage User </a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="ManageTicket.jsp">Manage Ticket</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="AdminLogin.jsp">Logout</a></p1>
	</div>

       
        
        
	<table class="tab green" border="0px">
                    <thead>
                      <tr>
                        <th scope="col">Train</th>
                        <th scope="col">User</th>
                        <th scope="col">From</th>
                        <th scope="col">To</th>
                        <th scope="col">Cabin</th>
                        <th scope="col">Seat</th>
                        <th scope="col"><i class="fa fa-inr"></i>Payment</th>
                        <th scope="col">Date</th>
                        <th scope="col">Cancel</th>

                      </tr>
                    </thead>
                    <tbody>
            <%
            
            try{
             
               
                
                
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from ticket2 ");
                            while(rs.next())
                            {
                                  
            %>

                      <tr>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><%=rs.getString(5) %></td>
                        <td><%=rs.getString(6) %></td>
                        <td><%=rs.getString(7) %></td>
                        <td><i class="fa fa-inr"></i><%=rs.getString(8) %> </td>
                        <td><%=rs.getString(9) %></td>
                        
<td><form action="cancelmanage" method="post">

                 <input type="hidden" name="ticketId" value="<%=rs.getInt(1)%>">
               
		<input type="submit" value=" Remove "></td>
                        </tr>
            <% 		}
            }catch(Exception e)
            {
            System.out.println(e);	
            }
            %>         
                    </tbody>
	</table>        
	
	</div>

</header>


</body>
</html>