<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String pass = request.getParameter("pass");
    try
    {
    	
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomyoulike","root","root");
    PreparedStatement st = con.prepareStatement("select ownerId,email,mobile,password from owner");
    
    ResultSet rs = st.executeQuery();
    boolean flag = false;
    while(rs.next())
    {
    	if((userName.equals(rs.getString(2)) || userName.equals(rs.getString(3))) && pass.equals(rs.getString(4)))
    	{
    		session.setAttribute("id",rs.getInt(1));
    		response.sendRedirect("ownerHome.jsp");
    	}
    }
 
    response.sendRedirect("checkingOwner.jsp");
   
    }catch(Exception e)
    {
    	out.print("enter valid username/password");
    }
%>
	
</body>
</html>