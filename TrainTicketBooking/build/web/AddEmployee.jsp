<%@page import="Beans.TrainBean"%>
<%@page import="java.util.ArrayList"%>
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
		<p1 class="menu"><a href="ManageTicket.jsp">Manage Ticket</a></p1>
	</div>
	<div class="home">
		<p1 class="menu"><a href="AdminLogin.jsp">Logout</a></p1>
	</div>

		<div class='tab'>
		<p1 class="menu"><a href="RegisterEmployees.jsp">Back</a></p1>
                </div>        
<%
    ArrayList<String> name = new ArrayList<String>();

    try{
        
     ArrayList<TrainBean> array = DatabaseManager.getTrain();
    for(TrainBean bean : array)
    {
        name.add(bean.getTrainName());
      
    }
%>        
<form  class="tab" action="addtrainemp" method="post"><br/>
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
    
		Train:     <select name="train">
                            <%for(String str : name){%>
                            <option values="<%=str%>"><%  out.println(str); %></option>
                            <%}%>
                        </select>
                        <br/><br/>
		Employee Name: <input type="text" name="empname"><br/><br/>
                Employee Password: <input type="text" name="emppass"><br/><br/>
		Employee Salary: <input type="text" name="empsalary"><br/><br/>
		Date of  Appointment: <input type="text" name="doa"><br/><br/>
		Timing: <input type="text" name="timing"><br/><br/>
		Job: <input type="text" name="job"><br/><br/>
		<input type="submit" value=" ADD Employee ">
	</form><br/>        

<%
    
}catch(Exception e)
    {
    e.printStackTrace();
    }
%>	


</header>


</body>
</html>