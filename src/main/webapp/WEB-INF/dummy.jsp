<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link th:rel="stylesheet" th:href="@{/css/bootstrap.min.css}">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script th:src="@{/js/bootstrap.min.js}"></script>
<title>Dummy Page</title>
<style>  
h3{
  font-family: Calibri; 
  font-size: 25pt;         
  font-style: normal; 
  font-weight: bold; 
  color:SlateBlue;
  text-align: center; 
  text-decoration: underline
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

</style> 
</head>
<body>
<%@include file="fragments/header.jsp" %>

	<%
		
		 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("/login");
		}
	
	%>
	<br>
	
<div class="container align-middle" style="padding-top: 12%;height: 500px;">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-body">
				<h1>SIGN IN SUCCESSFULLY</h1>
				<div class="d-flex justify-content-center" style="padding-top: 45px;">
					<a style="text-align: center;">Welcome : ${sessionScope.username}</a>
				</div>
				<div class="d-flex justify-content-center" style="padding-top: 80px;">
					<a href="${pageContext.request.contextPath }/home">Return to home</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

