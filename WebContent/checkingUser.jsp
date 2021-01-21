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
    PreparedStatement st = con.prepareStatement("select email,mobile,password from tenant");
    
    ResultSet rs = st.executeQuery();
    boolean flag = false;
    while(rs.next())
    {
    	if((userName.equals(rs.getString(1)) || userName.equals(rs.getString(2))) && pass.equals(rs.getString(3)))
    	{
    		response.sendRedirect("userHome.jsp");
    	}
    }
 
    response.sendRedirect("checkingUser.jsp");
   
    }catch(Exception e)
    {
    	out.print(e);
    }
%>
	
</body>
</html>