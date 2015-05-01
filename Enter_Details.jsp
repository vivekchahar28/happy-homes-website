<!doctype html>
<%@ page import="java.sql.*,java.lang.*,java.io.*,javax.servlet.*" %>

<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>

<%
    

	String dbusername = application.getInitParameter("dbusername");
	String dbpassword = application.getInitParameter("dbpassword");
	
 
    String oracledriver=application.getInitParameter("oracledriver");
	String driver=application.getInitParameter("driver");
    //out.println(oracledriver+ driver);
    Connection con = null;
    
    try
    {
    	Class.forName(driver);
		con=DriverManager.getConnection(oracledriver,dbusername,dbpassword);
		
        String propertycategory=request.getParameter("RadioButton1");
		String propertyfor=request.getParameter("RadioButton5");
		String propertytype=request.getParameter("RadioButton6");
        
        
        
        if(propertycategory.equals("residential"))
			{	
				propertytype=request.getParameter("RadioButton6");
			}
        else if(propertycategory.equals("commercial"))
				propertytype=request.getParameter("RadioButton7");
		
		else  propertytype=request.getParameter("RadioButton8");
        
   	 	//out.println(propertycategory+propertyfor+propertytype);
    
    
    	String newresale=request.getParameter("RadioButton4");

		String locality=request.getParameter("Editbox1");
    	
        if(locality.equals(""))
		{
			locality=request.getParameter("AutoComplete1");
		}
        
    	//out.println(" NEWRESALE  "+newresale+" LOCALITY  "+locality);
        
        String city=request.getParameter("Combobox5");

		String address=request.getParameter("Editbox2");

		String area=request.getParameter("Editbox3");
		if(area.equals(""))
		{
			area=request.getParameter("Editbox5");
		}
        
        //out.println(" city  "+city+"  address "+address+"   area   "+area);
        
        String price=request.getParameter("Editbox4");
    	
        String bedroom=request.getParameter("Combobox6");

		String description=request.getParameter("TextArea1");

		String bathroom=request.getParameter("RadioButton2");

		String furnished=request.getParameter("RadioButton3");

		String floorno=request.getParameter("Combobox7");

		String totalfloor=request.getParameter("Combobox8");

		String age=request.getParameter("Combobox9");

		String facing=request.getParameter("Combobox10");

		String temp[] = request.getParameterValues("amenities");
		String ammenities=".";
		for(int i=0; i<temp.length; i++)
			ammenities = ammenities + temp[i];
		
		//out.println("<br><br><br><br>"+ammenities+"<br><br><br><br><br>");
		
		String ownername=request.getParameter("Editbox6");

		String owneremail=request.getParameter("Editbox7");

		String ownerno=request.getParameter("Editbox8");
        
        ////out.println(bedroom+description+bathroom+furnished+floorno+totalfloor+age+facing+ammenities+ownername+owneremail+ownerno);
    
    	Statement stmt = con.createStatement();
        ResultSet resSet = stmt.executeQuery("select ownerid from owner where owneremail='"+owneremail+"'");
        String ownerid=null;
        
        while(resSet.next())
        {	 ownerid= resSet.getString(1);
		}
        
		////out.println(ownerid);    
		
    	if(ownerid==null)
    	{	resSet = stmt.executeQuery("select max(ownerid) from owner");
    		while(resSet.next())
        	{	 ownerid= resSet.getString(1);
			}
        	//out.println(ownerid);
			
			ownerid=Integer.toString(  Integer.parseInt(ownerid) + 1 );
        
			//out.println(ownerid);
			PreparedStatement pst =(PreparedStatement) con.prepareStatement("insert into owner(ownerid,ownername,owneremail,ownerphone) values(?,?,?,?)");
			pst.setString(1,ownerid);
			pst.setString(2,ownername);
			pst.setString(3,owneremail);
			pst.setString(4,ownerno);
			int i = pst.executeUpdate();
			resSet = stmt.executeQuery("select ownerid from owner where owneremail='"+owneremail+"'");
			
			while(resSet.next())
        	{	 ownerid= resSet.getString(1);
			}
			//out.println(ownerid);
		
		}
		
		String operatorid="2";
		//out.println("<br>   SSS");
		
		PreparedStatement pst1 =(PreparedStatement) con.prepareStatement("insert into property(propertyid,operatorid,ownerid, propertyfor,propertytype,newresale,city,locality,address,area,price,bedroom,bathroom,description,furnished,floornumber,totalfloor,age,facing,ammenities) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		out.println(propertytype);

		pst1.setString(1,"30");
      	pst1.setString(2,operatorid);
       	pst1.setString(3,ownerid);
		pst1.setString(4,propertyfor);
        pst1.setString(5,propertytype);
    	pst1.setString(6,newresale);
        pst1.setString(7,city);
       	pst1.setString(8,locality);
      	pst1.setString(9,address);
		pst1.setString(10,area);
      	pst1.setString(11,price);
        pst1.setString(12,bedroom);
		pst1.setString(13,bathroom);
        pst1.setString(14,description);
    	pst1.setString(15,furnished);
        pst1.setString(16,floorno);
       	pst1.setString(17,totalfloor);
      	pst1.setString(18,age);
		pst1.setString(19,facing);
      	pst1.setString(20,ammenities);
			
		
		//out.println("<br>  XXX");	
	
		int done = (pst1.executeUpdate());
		
    	if(done == 1)
		{
			 out.println("<span style='color: red; font-size: 20px; position: absolute; top: 0px; left: 0px;'>Data Sucessfully Uploaded</span>");
		}
		else out.println("<span style='color: red; font-size: 20px; position: absolute; top: 0px; left: 0px;'>Sorry !! Data Could'nt Uploaded</span>");
		
    }
    catch(Exception e)
    {
		System.out.println(e);	
		
	}
%>

<%@ include file="admin.html" %>


</body>
</html>
