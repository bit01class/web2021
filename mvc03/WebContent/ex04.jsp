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
	<h1>jstl</h1>
	<ul>
		<li><c:out value="1234"/></li>
		<li><c:out value="3.14"></c:out></li>
		<li><c:out value="문자열"></c:out></li>
		<li><c:out value="${true }"></c:out></li>
		<li><c:out value="값1">값2</c:out></li>
		<li><c:out value="${null }">대체될 값</c:out></li>
		<li><c:out value="null">대체될 값</c:out></li>
		<li><c:out value="">대체될 값</c:out></li>
		<li><c:out default="몰라" value=""></c:out></li>
		<li><c:out default="몰라" value="${null }"></c:out></li>
	</ul>
	<c:set var="su1" scope="page">1234</c:set>
	<ul>
		<li><c:out value="${su1 }"></c:out></li>
		<li><c:set var="su2" value="2222" ></c:set></li>
		<li>${su2 }</li>
	</ul>
	<jsp:useBean id="bean" class="kr.co.tjoeun.model.DeptDto"></jsp:useBean>
	<jsp:setProperty property="loc" name="bean" value="test1"/>
	<c:set target="${bean }" property="dname" value="test2"></c:set>
	<c:set target="${bean }" property="deptno">3333</c:set>
	
	<ul>
		<li>${bean.deptno }</li>
		<li>${bean.dname }</li>
		<li>${bean.loc }</li>
	</ul>
</body>
</html>











