<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl etc</h1>
	<c:redirect url="ex01.jsp">
		<c:param name="id" value="admin"></c:param>
		<c:param name="pw" value="1234"></c:param>
	</c:redirect>
</body>
</html>