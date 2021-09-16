<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl fmt</h1>
	<c:set var="won">10000</c:set>
	<p>${won }</p>
	<fmt:formatNumber value="${won }" pattern="###,###" var="msg"></fmt:formatNumber>
	<p>${msg }</p>
	<jsp:useBean id="time" class="java.util.Date"></jsp:useBean>
	<p>${time }</p>
	<fmt:formatDate value="${time }" var="time2" pattern="yyyy/MM/dd hh:mm:ss"/>
	<p>${time2 }</p>
</body>
</html>







