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
   int ownerId = (int)session.getAttribute("id");
   String area = request.getParameter("area");
   int rent = Integer.parseInt(request.getParameter("rent"));
   
   
   try{
	   

   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roomyoulike","root","root");
   
   PreparedStatement ps = con.prepareStatement("insert into room(ownerId,area,rent) values(?,?,?)");
	  ps.setInt(1,ownerId);
	  ps.setString(2,area);
	  ps.setInt(3,rent);
	 
	  int i=0;
	  i =  ps.executeUpdate();
	  if(i>0)
	  {
		  out.print("added successfully");
		  %>
		  <a href = "ownerHome.jsp">go to home</a>
		  <% 
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