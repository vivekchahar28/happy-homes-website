<!doctype html>
<%@ page import="java.sql.*,java.lang.*,java.io.*,javax.servlet.*" %>
<html><head>
<meta charset="utf-8">
<title>Home</title>
<style type="text/css">
#header1 {
	position: fixed;
	font-family: amethysta;
	font-size: 14px;
	font-style: normal;
	font-weight: 400;
	
	
	background-color: rgba(140,133,133,1);
	

}
.combo{
	font-size: 14px;
	font-family: Baskerville, "Palatino Linotype", Palatino, "Century Schoolbook L", "Times New Roman", serif;
	height: 45px;
	width: 95px;
	cursor:pointer;
	
}
body,td,th {
	font-family: Baskerville, "Palatino Linotype", Palatino, "Century Schoolbook L", "Times New Roman", serif;
	font-style: normal;
	font-weight: normal;
	font-size: 14px;
}
body {

	background-color: rgba(241,241,241,1.00);
}

.styled-button-1 {
	-webkit-box-shadow: rgba(0,0,0,0.2) 0 1px 0 0;
	-moz-box-shadow: rgba(0,0,0,0.2) 0 1px 0 0;
	box-shadow: rgba(0,0,0,0.2) 0 1px 0 0;
	color: #333;
	background-color: #FFB744;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border: none;
	font-family: 'Helvetica Neue',Arial,sans-serif;
	font-size: 16px;
	font-weight: 700;
	padding: 4px 16px;
	text-shadow: #FE6 0 1px 0;
	cursor: pointer;
	height: 42px;
	width: 90px;
}
input#button1:hover, input#button1:focus{
	-webkit-box-shadow: rgba(0,0,0,0.2) 0 1px 0 0;
	-moz-box-shadow: rgba(0,0,0,0.2) 0 1px 0 0;
	box-shadow: rgba(0,0,0,0.2) 0 1px 0 0;
	color: #ECECEC;
	background-color: #FFA71B;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border: none;
	font-family: 'Helvetica Neue',Arial,sans-serif;
	font-size: 16px;
	font-weight: 200;
	height: 32px;
	padding: 4px 16px;
	cursor: pointer;
	height: 43px;
	width: 93px;
	letter-spacing: 1px;
	margin-top: 0pt;
}
	
</style>
<link href="jQueryAssets/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.theme.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.tabs.min.css" rel="stylesheet" type="text/css">
<link href="jQueryAssets/jquery.ui.button.min.css" rel="stylesheet" type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
<script src="jQueryAssets/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="jQueryAssets/jquery.ui-1.10.4.tabs.min.js" type="text/javascript"></script>
<script src="jQueryAssets/jquery.ui-1.10.4.button.min.js" type="text/javascript"></script>
<script>var __adobewebfontsappname__="dreamweaver"</script>
<script src="http://use.edgefonts.net/amethysta:n4:default.js" type="text/javascript"></script>

</head>
<body style="text-align: center">

<header class="header" id="header1">
  <p style="color:white; align-content: center">Happy Homes Greater Noida</p>
</header>
 

    
   <div id="Tabs2" style="top:50px" >
    <ul>
      <li><a href="#tabs-4">Buy</a></li>
      <li><a href="#tabs-5">Rent</a></li>
   
    </ul>
    <div id="tabs-4">
      <form id="res_buy" method="post" action="buy_residential.jsp">
        <select name="buytype" id="combo_box1" title="type" class="combo">
      	   <option value="land"> Land</option>
           <option value="house"> House/Villa</option>
           <option value="appartment"> Appartment</option>
        </select>
      
        <select name="minprice" id="combo_box2" title="min" class="combo">
      	   <option selected="" value="10">10 Lacs</option>
           <option value="20">20 Lacs</option>
           <option value="30">30 Lacs</option>
           <option value="40">40 Lacs</option>
           <option value="50">50 Lacs</option>
           <option value="75">75 Lacs</option>
           <option value="90">90 Lacs</option> 
           <option value="100">1 Crore</option>
           <option value="150">1.5 Crore</option>
           <option value="200">2 Crore</option>
           <option value="300">3 Crore</option>
           <option value="400">4 Crore</option>
        </select>
       
        <label>To</label>
        <select name="maxprice" id="combo_box3" title="max" class="combo">
        	<option value="20">20 Lacs</option>
            <option value="30">30 Lacs</option>
            <option value="40">40 Lacs</option>
            <option value="50">50 Lacs</option>
            <option selected="" value="75">75 Lacs</option>
            <option value="90">90 Lacs</option>
            <option value="100">1 Crore</option>
            <option value="150">1.5 Crore</option>
            <option value="200">2 Crore</option>
            <option value="300">3 Crore</option>
            <option value="400">4 Crore</option>
            <option value="500">5 Crore</option>
  
        </select>
     
        <select name="bedrooms" id="combo_box4" class="combo">
            <option selected="" value="1">1 Bedroom</option>
            <option value="2">2 Bedrooms</option>
            <option value="3">3 Bedrooms</option>
            <option value="4">4 Bedrooms</option>
            <option value="5">5+ Bedrooms</option>
        </select>
        
        <input type="submit" id="button1" class="styled-button-1" value="Search" /> 
      </form>
    </div>
    <div id="tabs-5">
      <p>Content 2</p>
    </div>
   </div>



<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
$(function() {
	$( "#Tabs2" ).tabs(); 
});
$(function() {
	$( "#Button1" ).button(); 
});
$(function() {
	$( "#Buttonset1" ).buttonset(); 
});
</script>

<%
	String buytype;
	int minprice,maxprice,bedrooms;
	buytype = request.getParameter("buytype");
	minprice = Integer.parseInt(request.getParameter("minprice"));
	maxprice = Integer.parseInt(request.getParameter("maxprice"));
	bedrooms = Integer.parseInt(request.getParameter("bedrooms"));
		
	out.println(buytype+minprice + bedrooms + maxprice);
	
	ResultSet resSet=null;
	Connection con=null;

		try
		{
			
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","arpit");
		
		Statement stmt = con.createStatement();

		if(bedrooms==5)
          		resSet = stmt.executeQuery("select * from property where propertytype='"+buytype+"' and price between "+ minprice +" and "+ maxprice +" and bedroom>="+bedrooms );
		 
		 else 
		  resSet = stmt.executeQuery("select * from property where propertytype='"+buytype+"' and price between "+ minprice +" and "+ maxprice +" and bedroom="+bedrooms );

		while(resSet.next())
		{
			out.println(resSet.getString(6)+"<br>");
			out.println(resSet.getString(7)+"<br>");
			out.println(resSet.getString(8)+"<br>");
			out.println(resSet.getString(9)+"<br>");
            out.println(resSet.getString(10)+"<br>");
	 		out.println("<br>");
		}
		
		}
		catch(Exception e)
		{}
	
%>

</body>
</html>
