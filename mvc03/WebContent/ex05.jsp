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
	<h1>jstl 제어문(조건문)</h1>
	<h2>if</h2>
	<c:if test="${5>3 }">
		<p>참입니다</p>
	</c:if>
	<h2>choose</h2>
	<c:set var="su2">5</c:set>
	<c:choose>
		<c:when test="${su2 > 3 }">3보다큽니다</c:when>
		<c:when test="${su2 > 2 }">2보다큽니다</c:when>
		<c:when test="${su2 > 1 }">1보다큽니다</c:when>
		<c:otherwise>1이하입니다.</c:otherwise>
	</c:choose>
</body>
</html>











