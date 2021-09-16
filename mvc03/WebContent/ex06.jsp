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
	<h1>jstl 반복문</h1>
	<ul>
	<c:forEach begin="11" end="20" var="i" step="2" varStatus="status">
		<li>item - ${i }, ${status.count }, ${status.index }, 
					${status.first }, ${status.last }</li>
	</c:forEach>	
	</ul>
	
	<%
	java.util.ArrayList list=new java.util.ArrayList();
	list.add("첫번째");
	list.add("두번째");
	list.add("세번째");
	list.add("네번째");
	pageContext.setAttribute("list", list);
	%>
	<ul>
		<c:forEach items="${list }" var="msg" varStatus="status">
		<li>${status.index} - ${msg }</li>
		</c:forEach>
	</ul>
</body>
</html>













