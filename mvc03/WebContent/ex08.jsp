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
	<c:url var="naver" value="http://naver.com">
		<c:param name="query" value="java"></c:param>
	</c:url>
	
	<a href="${naver }">${naver }</a><br/>
	<a href="#"><c:url value="http://daum.net"/></a>
</body>
</html>