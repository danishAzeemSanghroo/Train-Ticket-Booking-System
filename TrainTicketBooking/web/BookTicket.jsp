<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DatabaseManager"%>
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
        <div class="tab"><p1 class="menu">Book Tickets</p1></div>
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
                        <th scope="col">Train Name</th>
                        <th scope="col">From</th>
                        <th scope="col">To</th>
                        <th scope="col">Departure Time</th>
                        <th scope="col">Arrival Time</th>
                        <th scope="col"><i class="fa fa-inr"></i>Fare</th>
                        <th scope="col">Book Here</th>

                      </tr>
                    </thead>
                    <tbody>
            <%
            
            try{
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from schedule ");
                            while(rs.next())
                            {
                            
                                  
            %>

                      <tr>
                        <td><%=rs.getInt(2) %></td>
                        
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><%=rs.getString(5) %></td>
                        <td><%=rs.getString(6) %></td>
                        <td><i class="fa fa-inr"></i><%=rs.getString(7) %> </td>
                        <td><form action="SelectSeat.jsp"  method="post">
                                              <%  HttpSession session1 = request.getSession();
                                                session1.setAttribute("trainId",rs.getString(1) );
                                                session1.setAttribute("scheduleId", rs.getInt(2));
                                                session1.setAttribute("fare", rs.getString(7));
                                              %>
                                <input type="hidden" name="trainId" value="<%=rs.getString(1)%>">
                                <input type="hidden" name="sheduleId" value="<%=rs.getString(2)%>">
                                <input type="hidden" name="fare" value="<%=rs.getString(7)%>">
<!--                                <input type="hidden" name="username" value="<%= (String)request.getSession().getAttribute("username")%>">-->
                                <input type="submit" value="Click To Book">

                            </form></td>
                        
        
                        </tr>
            <% 		
                }

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