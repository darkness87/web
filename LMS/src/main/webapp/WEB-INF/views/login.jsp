<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		session.setAttribute("userID",userID);
		session.setAttribute("userPassword",userPassword);
		
		response.sendRedirect("main?userID="+userID+"&userPassword="+userPassword);
	%>
</body>
</html>