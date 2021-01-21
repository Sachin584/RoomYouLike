<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room You Like</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@1,700&display=swap" rel="stylesheet">
<style type = "text/css">
  body{
      font-family: 'Roboto Condensed', sans-serif;
      background-color:orange;
  }
  
  .links{
  	height: 300px;
  	width: 500px;
  	align-content: center;
  	margin-left:400px;
  	margin-right:400px;
  	text-align:center;
  	
  }
  
  a{
  	list-style:none;
  	color:black;
  }

.links button{
	
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: black;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;

}

button:hover{
	background-color: #5379fa !important;
  transition: 1s;
}

</style>
</head>
<body>
	<h1 style="text-align: center; color: blue; font-size:30px;">Room You Like</h1>
	<div class = "links">
		<span>Are You ?</span><br><br>
		<a href = "userLogin.jsp"><button>An User</button></a><br>
		<span>or</span><br>
		<a href = "ownerLogin.jsp"><button>An Owner</button></a>
		
	</div>
</body>
</html>