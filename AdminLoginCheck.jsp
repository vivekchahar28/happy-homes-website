<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Login</title>
</head>

<body>

<%
	String user = request.getParameter("username");
    String pass = request.getParameter("password");
    
	String adminuser = (String)application.getInitParameter("user"); 
    String adminpass = (String)application.getInitParameter("pass"); 
    
    if(user.equals(adminuser) && pass.equals(adminpass))
    {
    	RequestDispatcher reqdis = request.getRequestDispatcher("newentry.html");
        reqdis.forward(request,response);
		
		
    
    }
    else
    {  
        out.println("<span style='color: red; font-size: 20px; position: absolute; top: 50px; left: 500px;'>Entered Username and Password do no match!</span>");
    }
    

%>
<%@ include file='/admin.html' %>
</body>
</html>
