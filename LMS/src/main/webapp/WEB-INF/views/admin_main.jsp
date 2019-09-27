<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="resources/css/main_menu.css">
    <title>학사관리시스템</title>
</head>
<%
	session.setAttribute("userName",request.getAttribute("userName"));
%>
<script>
	alert("환영합니다.");
</script>
<body>
  <jsp:include page="admin_nav.jsp"/>
  <section></section>
  <script src="resources/js/menu.js"></script>
</body>
</html>