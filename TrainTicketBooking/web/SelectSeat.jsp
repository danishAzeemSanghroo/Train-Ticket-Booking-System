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
    
<div class="tab"><p1 class="menu">Select Seat</p1></div>

<form action="BookDetails.jsp" class="tab red" method="post">
                    
                            <%
                            String msg=request.getParameter("msg");
                            if("invalid".equals(msg))
                            {
                            %>
                            <p class="text-danger">Something went wrong!! Try Again</p>
                            <%} %>
              
                          
		Train ID: <input type="text" name="trainId" value="<%=request.getParameter("trainId")%>" disabled><br/><br/>
                
                <label for="cabin">Select Cabin:</label>

                <select name="cabin" id="cabin">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                </select>
                <br/><br/>
                <p1 class="menu1">A  B  C  D</p1><br>
                Row1><input type="radio" name="seat" value="seat1" />
                <input type="radio" name="seat" value="seat2" />
                <input type="radio" name="seat" value="seat3" />
                <input type="radio" name="seat" value="seat4" />
                <br>
                Row2><input type="radio" name="seat" value="seat5" />
                   <input type="radio" name="seat" value="seat6" />
                <input type="radio" name="seat" value="seat7" />
                <input type="radio" name="seat" value="seat8" />
                <br>
               Row3><input type="radio" name="seat" value="seat9" />
                <input type="radio" name="seat" value="seat10" />
                <input type="radio" name="seat" value="seat11" />
                <input type="radio" name="seat" value="seat12" />
                <br>
                Row4><input type="radio" name="seat" value="seat13" />
                   <input type="radio" name="seat" value="seat14" />
                <input type="radio" name="seat" value="seat15" />
                <input type="radio" name="seat" value="seat16" />
                <br>
                Row5><input type="radio" name="seat" value="seat17" />
                <input type="radio" name="seat" value="seat18" />
                <input type="radio" name="seat" value="seat19" />
                <input type="radio" name="seat" value="seat20" />
                <br>
                Row6><input type="radio" name="seat" value="seat21" />
                   <input type="radio" name="seat" value="seat22" />
                <input type="radio" name="seat" value="seat23" />
                <input type="radio" name="seat" value="seat24" />
                <br>
               Row7><input type="radio" name="seat" value="seat25" />
                <input type="radio" name="seat" value="seat26" />
                <input type="radio" name="seat" value="seat27" />
                <input type="radio" name="seat" value="seat28" />
                <br>
                Row8><input type="radio" name="seat" value="seat29" />
                   <input type="radio" name="seat" value="seat30" />
                <input type="radio" name="seat" value="seat31" />
                <input type="radio" name="seat" value="seat32" />
                <br>
                Row9><input type="radio" name="seat" value="seat33" />
                <input type="radio" name="seat" value="seat34" />
                <input type="radio" name="seat" value="seat35" />
                <input type="radio" name="seat" value="seat36" />
                <br>
                Row10<input type="radio" name="seat" value="seat37" />
                   <input type="radio" name="seat" value="seat38" />
                <input type="radio" name="seat" value="seat39" />
                <input type="radio" name="seat" value="seat40" />
                <br>
               Row11<input type="radio" name="seat" value="seat41" />
                <input type="radio" name="seat" value="seat42" />
                <input type="radio" name="seat" value="seat43" />
                <input type="radio" name="seat" value="seat44" />
                <br>
                Row12<input type="radio" name="seat" value="seat45" />
                   <input type="radio" name="seat" value="seat46" />
                <input type="radio" name="seat" value="seat47" />
                <input type="radio" name="seat" value="seat48" />
                <br>
                Row13<input type="radio" name="seat" value="seat49" />
                <input type="radio" name="seat" value="seat50" />
                <input type="radio" name="seat" value="seat51" />
                <input type="radio" name="seat" value="seat52" />
                <br>
                Row14<input type="radio" name="seat" value="seat53" />
                   <input type="radio" name="seat" value="seat54" />
                <input type="radio" name="seat" value="seat55" />
                <input type="radio" name="seat" value="seat56" />
                <br>
               Row15<input type="radio" name="seat" value="seat57" />
                <input type="radio" name="seat" value="seat58" />
                <input type="radio" name="seat" value="seat59" />
                <input type="radio" name="seat" value="seat60" />
                <br>
                
               
               
                
               
                
                
                
		<br/><input type="submit" value=" Select "><br/>
	</form><br/>

</body>
</html>