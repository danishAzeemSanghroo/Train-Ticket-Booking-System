<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.DatabaseManager"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Home</title>
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
		<p1 class="menu"><a href="updatetrain">Manage Ticket</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="AdminLogin.jsp">Logout</a></p1>
	</div>

		<div class='tab'>
		<p1 class="menu"><a href="AddEmployee.jsp">Click Here to Add Employee</a></p1>
	</div>        
        
        
	<table class="tab green" border="0px">
                    <thead>
                      <tr>
                        <th scope="col">Train</th>
                        <th scope="col">Name</th>
                        <th scope="col">Password</th>
                        <th scope="col"><i class="fa fa-inr"></i>Salary</th>
                        <th scope="col">Date Of Appointment</th>
                        <th scope="col">Timing</th>
                        <th scope="col">Job</th>
                        
                        <th scope="col">Remove</th>

                      </tr>
                    </thead>
                    <tbody>
            <%
            int sno=0;
            try{
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from employee ");
                            while(rs.next())
                            {
                                    sno=sno+1;
                                    %>

                      <tr>
                        <td><%=rs.getInt(1) %></td>
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><i class="fa fa-inr"></i><%=rs.getInt(5) %> </td>
                        <td><%=rs.getString(6) %></td>
                        <td><%=rs.getString(7) %></td>
                        <td><%=rs.getString(8) %></td>
<td><form action="deleteEmployee" method="post">

                 <input type="hidden" name="empId" value="<%=rs.getInt(2)%>">
               
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