<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseManager"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Home</title>
	<link rel="stylesheet" href="TrainCSS.css">
	<style>
		
	</style>
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
                        <th scope="col">Train ID</th>
                        <th scope="col">Train Name</th>
                        <th scope="col">Train Category</th>
<!--                        <th scope="col">Edit</th>
                        <th scope="col">Remove</th>-->

                      </tr>
                    </thead>
                    <tbody>
            <%
           
            try{
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from train ");
                            while(rs.next())
                            {
                                    
                                    %>

                      <tr>
                        <td><%=rs.getInt(1) %></td>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
<!--                        <td><p1 class="menu"><a href="UserLogin.jsp">Edit</a></p1></td>
                     <td><p1 class="menu"><a href="UserLogin.jsp">Remove</a></p1></td>-->
                        </tr>
            <% 		}
            }catch(Exception e)
            {
            System.out.println(e);	
            }
            %>         
                    </tbody>
	</table>
                    
		<div class='tab'>
		<p1 class="menu">Add Train</p1>
	</div>
<form  class="tab" action="adminaddtrain" method="post"><br/>
                                                    <%
                                                    String msg=request.getParameter("msg");
                                                    if("success".equals(msg))
                                                    {
                                                    %>
                                                    <p class="text-success">Successfully Added Train</p>
                                                    <%}%>
                                                    <%
                                                    if("invalid".equals(msg))
                                                    {
                                                    %>
                                                    <p class="text-danger">Something went wrong! Try Again</p>
                                                    <%} %>
                                                    
		Train Name: <input type="text" name="trainname"><br/><br/>
		Train Category: <input type="text" name="traincategory"><br/><br/>
		
		<input type="submit" value=" ADD TRAIN ">
	</form><br/>                    
           

	</div>

</header>

</body>
</html>