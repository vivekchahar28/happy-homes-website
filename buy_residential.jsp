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
	font-size: 12px;
	font-family: Baskerville, "Palatino Linotype", Palatino, "Century Schoolbook L", "Times New Roman", serif;
	height: 30px;
	width: 70px;
	cursor: pointer;
	border-radius: 5px;
	border-color: hsla(175,71%,78%,1.00);
	-webkit-box-shadow: 0px 0px 3px 1px hsla(172,60%,74%,1.00);
	box-shadow: 0px 0px 3px 1px hsla(172,60%,74%,1.00);
	word-spacing: 0px;
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
#Hr-14 {
	position: relative;
	list-style: none;
	margin: 1px;
	padding: 0;
	top: 40px;
	left: 600px;
}
#Hr-14 li {
margin:0;
padding:0;
float:left;
}
#Hr-14 li a {
	display: inline;
	
	margin: 0;
	padding: 11px 14px;
	text-decoration: none;
	text-align: center;
	text-transform: capitalize;
	font-size: 18px;
	font-weight: bold;
	color: #F3F3F3;
	font-family: Cambria,'Times New Roman','Nimbus Roman No9 L','Freeserif',Times,serif;
	font-style: normal;
	border-radius: 4px;
	-webkit-box-shadow: 0px 0px 3px 2px #C1C1C1;
	box-shadow: 0px 0px 3px 2px #C1C1C1;
	min-width: 100px;
	letter-spacing: 1px;
	background-image: -webkit-linear-gradient(270deg,rgba(85,85,85,1.00) 7.77%,rgba(164,164,164,1.00) 97.41%);
	background-image: -moz-linear-gradient(270deg,rgba(85,85,85,1.00) 7.77%,rgba(164,164,164,1.00) 97.41%);
	background-image: -o-linear-gradient(270deg,rgba(85,85,85,1.00) 7.77%,rgba(164,164,164,1.00) 97.41%);
	background-image: linear-gradient(180deg,rgba(85,85,85,1.00) 7.77%,rgba(164,164,164,1.00) 97.41%);
}
#Hr-14 li:nth-child(2n) a:hover {
	-moz-box-shadow: inset 0px -4px 0px 0px #19B662;
	-webkit-box-shadow: inset 0px -60px 0px 1px #565F5B;
	box-shadow: inset 0px -60px 0px 1px #565F5B;
	-moz-transition: all 0.25s ease-in;
	-webkit-transition: all 0.25s ease-in;
	-o-transition: all 0.25s ease-in;
	transition: all 0.25s ease-in;
}
#Hr-14 li:nth-child(2n-1) a:hover {
	-moz-box-shadow: inset 0px -4px 0px 0px #2AD887;
	-webkit-box-shadow: inset 0px -60px 0px 1px #565F5B;
	box-shadow: inset 0px -60px 0px 1px #565F5B;
	-moz-transition: all 0.25s ease-in;
	-webkit-transition: all 0.25s ease-in;
	-o-transition: all 0.25s ease-in;
	transition: all 0.25s ease-in;
}
#Hr-14 li:last-child {
border-right:none;
}
#Hr-14 li:nth-child(n+1) a:active {
	-moz-box-shadow: inset 0px -60px 0px 0px #DCDCDC;
	-webkit-box-shadow: inset 0px -60px 0px 1px #565F5B;
	box-shadow: inset 0px -60px 0px 1px #565F5B;
	-moz-transition: all 0.25s ease-in-out;
	-webkit-transition: all 0.25s ease-in-out;
	-o-transition: all 0.25s ease-in-out;
	transition: all 0.25s ease-in-out;
}
#Hr-14 li:nth-child(2n-1) a:active {
	-moz-box-shadow: inset 0px -60px 0px 0px #DCDCDC;
	-webkit-box-shadow: inset 0px -60px 0px 1px #565F5B;
	box-shadow: inset 0px -60px 0px 1px #565F5B;
	-moz-transition: all 0.25s ease-in-out;
	-webkit-transition: all 0.25s ease-in-out;
	-o-transition: all 0.25s ease-in-out;
	transition: all 0.25s ease-in-out;
	border-radius: 5px;
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

input#button1:hover, input#button1:focus, input#button2:hover, input#button2:focus, input#button3:hover, 

input#button3:focus, input#button4:hover, input#button4:focus, input#button5:hover, input#button5:focus, 

input#button6:hover, input#button6:focus, input#readmorebutton:hover, input#readmorebutton:focus{
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
	word-spacing: 1px;
}
	
	
	

.styled-readmorebutton {
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
	font-size: 13px;
	font-weight: 700;
	padding: 4px 16px;
	text-shadow: #FE6 0 1px 0;
	cursor: pointer;
	height: 42px;
	width: 90px;
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
<img src="images/apartmentbackground2.jpg" alt="" style="float: left;position: fixed;left: 0px; height: 1000px; width: 1600px" />

  <div style="position:fixed; background:#4D4D4D;width:1500px; height: 120px;z-index: 1;top: 0px; left: 0px;">

     <img src="images/img0010.png" width="226" height="100" alt="" style="float: left;position: absolute;top: 10px;left: 200px" />
     <div id="topmenu" style="z-index: 50;font-size: small; border-radius: 0px;" >
         <ul id="Hr-14" style="z-index: 50;">
	 		<li><a href="index.html">Home</a></li>
            <li><a href="#">About</a></li>
			<li><a href="#">Services</a></li>
			<li><a href="#">Solutions</a></li>
            <li><a href="#">Contact</a></li>
			
		</ul>
    
  	</div>
   	</div>
 

    
<div id="Tabs1" style="clear:both;top: 150px; left: 300px">
  <ul>
    <li><a href="#tabs-1">Residential</a></li>
    <li><a href="#tabs-2">Commercial</a></li>
    <li><a href="#tabs-3">Project</a></li>
  </ul>
  
  
  <div id="tabs-1" style="background:#D1D1D1">
    
   <div id="Tabs2">
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
      
        <select name="minprice" id="combo_box2" title="minprice" class="combo">
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
        <select name="maxprice" id="combo_box3" title="maxprice" class="combo">
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
     
        <select name="bedrooms" id="combo_box4" title="bedrooms" class="combo">
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
      
            <form id="res_rent" method="post" action="buy_residential.jsp">
        <select name="buytype" id="combo_box5" title="type" class="combo">
           <option value="house"> House/Villa</option>
           <option value="appartment"> Appartment</option>
           <option value="pg"> PG</option>
        </select>
      
        <select name="minprice" id="combo_box6" title="minprice" class="combo">
      	   <option selected="" value="5000">5000</option>
           <option value="10000">10000</option>
           <option value="15000">15000</option>
           <option value="20000">20000</option>
           <option value="30000">30000</option>
           <option value="40000">40000</option>
           <option value="50000">50000</option> 
           <option value="75000">75000</option>
           <option value="90000">90000</option>
           <option value="100000">100000</option>
           <option value="150000">150000</option>
           <option value="200000">200000</option>
        </select>
       
        <label>To</label>
        <select name="maxprice" id="combo_box7" title="maxprice" class="combo">
           <option selected="" value="10000">10000</option>
           <option value="15000">15000</option>
           <option value="20000">20000</option>
           <option value="30000">30000</option>
           <option value="40000">40000</option>
           <option value="50000">50000</option> 
           <option value="75000">75000</option>
           <option value="90000">90000</option>
           <option value="100000">100000</option>
           <option value="150000">150000</option>
           <option value="200000">200000</option>
            <option value="300000">300000</option>
  
        </select>
     
        <select name="bedrooms" id="combo_box8" title="bedrooms" class="combo">
            <option selected="" value="1">1 Bedroom</option>
            <option value="2">2 Bedrooms</option>
            <option value="3">3 Bedrooms</option>
            <option value="4">4 Bedrooms</option>
            <option value="5">5+ Bedrooms</option>
        </select>
        
        <input type="submit" id="button2" class="styled-button-1" value="Search" /> 
      </form>
      
    </div>
    
   </div>
   
  </div>

  
  <div id="tabs-2">
    <div id="Tabs3">
      <ul>
        <li><a href="#tabs-6">Buy</a></li>
        <li><a href="#tabs-7">Rent</a></li>
      </ul>
      <div id="tabs-6" style="display: block; word-spacing: 0px;">
       
       <form id="com_buy" method="post" action="buy_residential.jsp">
        <select name="buytype" id="combo_box9" title="type" class="combo">
           <option value="shop"> Shop</option>
           <option value="office"> Office Space</option>
           <option value="commerical"> Commerical Land</option>
        </select>
        
         <select name="minprice" id="combo_box10" title="minprice" class="combo">
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
        
         <select name="maxprice" id="combo_box11" title="maxprice" class="combo">
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
                    
           <select name="minarea" id="combo_box12" title="minarea" class="combo">
        	<option selected=""  value="100">100 sq. feet</option>
            <option value="500">500 sq. feet</option>
            <option value="1000">1000 sq. feet</option>
            <option value="1500">1500 sq. feet</option>
            <option value="2000">2000 sq. feet</option>
            <option value="2500">2500 sq. feet</option>
            <option value="3000">3000 sq. feet</option>
            <option value="3500">3500 sq. feet</option>
            <option value="4000">4000 sq. feet</option>

        </select>
    <label>To</label>
  
             <select name="maxarea" id="combo_box13" title="maxarea" class="combo">
            <option value="500">500 sq. feet</option>
            <option value="1000">1000 sq. feet</option>
            <option selected="" value="1500">1500 sq. feet</option>
            <option value="2000">2000 sq. feet</option>
            <option value="2500">2500 sq. feet</option>
            <option value="3000">3000 sq. feet</option>
            <option value="3500">3500 sq. feet</option>
            <option value="4000">4000 sq. feet</option>
            <option value="4500">4500 sq. feet</option>

        </select>
          <input type="submit" id="button3" class="styled-button-1" value="Search" /> 
       </form>
      </div>
      <div id="tabs-7" style="display: block; word-spacing: 0px;">
        
       <form id="com_rent" method="post" action="buy_residential.jsp">
        <select name="buytype" id="combo_box14" title="type" class="combo">
           <option value="shop"> Shop</option>
           <option value="office"> Office Space</option>
           <option value="commerical"> Commerical Land</option>
        </select>
        
         <select name="minprice" id="combo_box15" title="minprice" class="combo">
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
        
         <select name="maxprice" id="combo_box16" title="maxprice" class="combo">
        	<option value="20">20 Lacs</option>
            <option value="30">30 Lacs</option>
            <option value="40">40 Lacs</option>
            <option selected="" value="50">50 Lacs</option>
            <option value="75">75 Lacs</option>
            <option value="90">90 Lacs</option>
            <option value="100">1 Crore</option>
            <option value="150">1.5 Crore</option>
            <option value="200">2 Crore</option>
            <option value="300">3 Crore</option>
            <option value="400">4 Crore</option>
            <option value="500">5 Crore</option>
  
        </select>
        
     <select name="minarea" id="combo_box17" title="minarea" class="combo">
        	<option selected=""  value="100">100 sq. feet</option>
            <option value="500">500 sq. feet</option>
            <option value="1000">1000 sq. feet</option>
            <option value="1500">1500 sq. feet</option>
            <option value="2000">2000 sq. feet</option>
            <option value="2500">2500 sq. feet</option>
            <option value="3000">3000 sq. feet</option>
            <option value="3500">3500 sq. feet</option>
            <option value="4000">4000 sq. feet</option>

        </select>
    <label>To</label>
  
             <select name="maxarea" id="combo_box18" title="maxarea" class="combo">
            <option value="500">500 sq. feet</option>
            <option value="1000">1000 sq. feet</option>
            <option selected="" value="1500">1500 sq. feet</option>
            <option value="2000">2000 sq. feet</option>
            <option value="2500">2500 sq. feet</option>
            <option value="3000">3000 sq. feet</option>
            <option value="3500">3500 sq. feet</option>
            <option value="4000">4000 sq. feet</option>
            <option value="4500">4500 sq. feet</option>

        </select>
          <input type="submit" id="button4" class="styled-button-1" value="Search" />     
        
        
       </form>
       </div>
       
        </div>
        
    </div>
    
   <div id="tabs-3">
    <p>Content 3</p>
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
$(function() {
	$( "#Tabs3" ).tabs(); 
});
</script>


<%
	String buytype;
	int minprice,maxprice,bedrooms;
	buytype = request.getParameter("buytype");
	minprice = Integer.parseInt(request.getParameter("minprice"));
	maxprice = Integer.parseInt(request.getParameter("maxprice"));
	bedrooms = Integer.parseInt(request.getParameter("bedrooms"));

	ResultSet resSet=null;
	Connection con=null;

	int boxtop = 480;
	int imagetop = 570;
	int htop = boxtop+30;
	int counter  = 0;
		try
		{
			
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","arpit");
		
		Statement stmt = con.createStatement();
		
		if(buytype.equals("land"))
			{	
				resSet = stmt.executeQuery("select * from property where propertytype='"+buytype+"' and price between "+ minprice +" and "+ maxprice );
			}
		
		else if(bedrooms==5)
          		resSet = stmt.executeQuery("select * from property where propertytype='"+buytype+"' and price between "+ minprice +" and "+ maxprice +" and bedroom>="+bedrooms );
		 
		 else 
		  resSet = stmt.executeQuery("select * from property where propertytype='"+buytype+"' and price between "+ minprice +" and "+ maxprice +" and bedroom="+bedrooms );
		out.println("<br><br><br><br><br><br><br><br><br><br><br><br>");
		while(resSet.next())
		{	
			int price = Integer.parseInt(resSet.getString(11));	
			String propertytype = resSet.getString(5);
			if(propertytype.equals("house"))
				propertytype="House / Villa";
			else if(propertytype.equals("land"))
				propertytype="Res. Land";
			else if(propertytype.equals("pg"))
				propertytype="P.G.";
			else
				propertytype="Appartment";
				
			String city = resSet.getString(7);
			int area = Integer.parseInt(resSet.getString(10));
			
			String locality = resSet.getString(8);
			String bedroom = resSet.getString(12);
			String amenities = resSet.getString(20);
			String description = resSet.getString(14);
			String propertyfor = resSet.getString(4);
			String pf = "Rent";
			
			
			float pricepersqmt = Float.parseFloat(String.format("%.2f",(float)(price * 100000)/(float)area,2));
			if(propertyfor.equals("rent"))
				pricepersqmt = (pricepersqmt/100000);
			
			if(propertyfor.equals("buy"))
				pf="Sale";
			int imageloc = imagetop+14;
out.println("<img src='images/boxbottom.png'  alt='' style='position:absolute;top: "+boxtop+"px; left: 300px;' />");
out.println("<img src='images/boxheading.png'  alt='' style='position:absolute; top: "+boxtop+"px; left: 300px;' />");
out.println("<img src='images/boximage.png'  alt='' style='position:absolute;top: "+imagetop+"px; left: 320px;' />");

if(propertytype.equals("House / Villa"))
{
out.println("<img src='images/dummyhouse.jpg'  alt='' style='width: 240px; height: 203px;border-radius: 6px;position:absolute;top: "+imageloc+"px; left: 333px;' />");	
}
else if(propertytype.equals("Res. Land"))
{
out.println("<img src='images/dummyland.jpeg'  alt='' style='width: 240px; height: 203px;border-radius: 6px;position:absolute;top: "+imageloc+"px; left: 333px;' />");	
}
else
{
out.println("<img src='images/dummyappartment.jpg'  alt='' style='width: 240px; height: 203px;border-radius: 6px;position:absolute;top: "+imageloc+"px; left: 333px;' />");	
}



if(propertyfor.equals("buy"))
{
out.println("<span style='color:#000000;font-family:Arial;font-size:24px;position:absolute;left:335px;top:"+htop+"px;width:617px;height:29px;text-align:left;'><strong> &#8377;&nbsp; "+price+" Lac </strong></span> ");
}
else
{
out.println("<span style='color:#000000;font-family:Arial;font-size:24px;position:absolute;left:335px;top:"+htop+"px;width:617px;height:29px;text-align:left;'><strong> &#8377;&nbsp; "+price+"</strong></span> ");
}

out.println("<span style='color:#800010;font-family:Arial;font-size:21px;position:absolute;left:470px;top:"+htop+"px;'><strong>"+propertytype+"</strong></span>");

out.println("<span style='color:#000000;font-family:Arial;font-size:19px;position:absolute;left:610px;top:"+htop+"px;'><strong>available for "+pf+" in</strong></span>");

out.println("<span style='color:#00005B;font-family:Arial;font-size:21px;position:absolute;left:800px;top:"+htop+"px;'><strong>"+city+"</strong></span>");

htop+=80;

out.println("<span style='color:#000000;font-family:Arial;font-size:15px;position:absolute;left:600px;top:"+htop+"px;'>Plot Area:&nbsp;&nbsp; </span><span style='color:#800000;font-family:Arial;font-size:15px;position:absolute;left:670px;top:"+htop+"px;'><strong>"+area+"</strong></span>");

if(propertytype.equals("Appartment"))   // display square feet
{
out.println("</span><span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:710px;top:"+htop+"px;'>Sq. Feet</span>");
}
else
{
out.println("</span><span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:710px;top:"+htop+"px;'>Sq. Meter</span>");

}

if(propertytype.equals("Appartment")) 
{
out.println("<span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:790px;top:"+htop+"px;'>@ </span><span style='color:#800000;font-family:Arial;font-size:15px;position:absolute;left:810px;top:"+htop+"px;'><strong>"+pricepersqmt+"</strong></span><span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:870px;top:"+htop+"px;'>&nbsp; / Sq. Feet<br></span>");
}
else
{
out.println("<span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:790px;top:"+htop+"px;'>@ </span><span style='color:#800000;font-family:Arial;font-size:15px;position:absolute;left:810px;top:"+htop+"px;'><strong>"+pricepersqmt+"</strong></span><span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:870px;top:"+htop+"px;'>&nbsp; / Sq. Meter<br></span>");
	
}


htop+=30;
out.println("<span style='color:#000000;font-family:Arial;font-size:15px;position:absolute;left:600px;top:"+htop+"px;'>Locality: </span><span style='color:#800000;font-family:Arial;font-size:15px;position:absolute;left:660px;top:"+htop+"px;'><strong>"+locality+"</strong></span>");
htop+=30;
out.println("<hr id='Line1' style='margin:0;padding:0;position:absolute;left:600px;top:"+htop+"px;width:349px;height:2px;'>");
htop+=15;
if(!propertytype.equals("Residential Land"))
{
out.println("<span style='color:#000000;font-family:Arial;font-size:13px;position:absolute;left:600px;top:"+htop+"px;'>Bedrooms:</span><span style='color:#800000;font-family:Arial;font-size:15px;position:absolute;left:670px;top:"+htop+"px;'><strong>"+bedroom+"</strong></span>");
}

htop+=20;

if(amenities!=null)
{	out.println("<div id='wb_Text4' style='position:absolute;position:absolute;left:600px;top:"+htop+"px;width:347px;height:32px;text-align:left;'>");
	out.println("<span style='color:#000000;font-family:Arial;font-size:13px;'>Highlights: "+amenities+"</span></div>");
}
htop+=45;

out.println("<hr id='Line2' style='margin:0;padding:0;position:absolute;left:600px;top:"+htop+"px;width:349px;height:2px;'>");
htop+=20;

if(description!=null)
{	out.println("<div id='wb_Text7' style='position:absolute;left:600px;top:"+htop+"px;width:351px;height:49px;z-index:26;text-align:left;>");
	out.println("<span style='color:#000000;font-family:Arial;font-size:15px;'>Description: </span><span 			style='color:#000000;font-family:Arial;font-size:13px;'>"+description+"</span></div>");
}
htop+=10;
	String searchid = resSet.getString(1);
	out.println("<form id='read_more' method='post' action='display_details.jsp?searchid="+searchid+"'>");

	out.println("<input type='submit' id='readmorebutton' class='styled-readmorebutton' value='Read' style='position:absolute;left:860px;top:"+htop+"px;' /> ");
				
	out.println("</form>");		
			htop = boxtop+30;
			boxtop=boxtop+400;
			imagetop+=400;
			htop+=400;
			counter++;
		}
		
		
		
		
		}
		catch(Exception e)
		{}
		
		
		if(counter == 0)
		{
			
out.println("<div  style='opacity: .5; position:absolute; background:#4D4D4D; width:1500px; height: 120px;z-index: 1;top: 500px; left: 0px;z-index: 2;'>");out.println("</div>");
out.println("<span style='color: #FFFFFF; position:absolute; top: 540px; left: 200px; font-size:32px;z-index: 3;'><strong> Sorry! No items matched your query. Try a different Search.</strong>");
out.println("</span>");

		
		}
		


     
     	
     
	
%>

</body>
</html>
