<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseManager"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User Home</title>
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
             
                String username=(String)request.getSession().getAttribute("username");
                   
                
                
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from ticket2 where username= '"+username+"' ");
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
                        
<td><form action="cancel" method="post">

                 <input type="hidden" name="ticketId" value="<%=rs.getInt(1)%>">
               
		<input type="submit" value=" Cancel "></td>
                        </tr>
            <% 		}
            }catch(Exception e)
            {
            System.out.println(e);	
            }
            %>         
                    </tbody>
	</table>        

</header>


</body>
</html>