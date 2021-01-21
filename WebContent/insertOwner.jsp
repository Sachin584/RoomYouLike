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
   String fname = request.getParameter("fname");
   String lname = request.getParameter("lname");
   String email = request.getParameter("email");
   String adhar = request.getParameter("adhar");
   String address = request.getParameter("address");
   String profession = request.getParameter("profession");
   String pass = request.getParameter("pass");
   String mobNo = request.getParameter("mobNo");
   
   try{
	   

   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomyoulike","root","root");
   
   PreparedStatement ps = con.prepareStatement("insert into owner(fname,lname,email,adharNo,address,profession,password,mobile) values(?,?,?,?,?,?,?,?)");
	  ps.setString(1,fname);
	  ps.setString(2,lname);
	  ps.setString(3,email);
	  ps.setString(4,adhar);
	  ps.setString(5,address);
	  ps.setString(6,profession);
	  ps.setString(7,pass);
	  ps.setString(8,mobNo);
	 
	  int i=0;
	  i =  ps.executeUpdate();
	  if(i>0)
	  {
		  response.sendRedirect("ownerLogin.jsp");
	  }
	  else
	  {
		  out.print("error");
	  }
	  
}catch(Exception e)
{
	  out.println(e);
}
   
%>
</body>
</html>