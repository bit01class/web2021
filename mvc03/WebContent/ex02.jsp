<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el 활용</h1>
	<%
	// page > request > session > application
		String msg1="문자열";
		pageContext.setAttribute("msg1", "page");
		request.setAttribute("msg1", "req");
		session.setAttribute("msg1", "sess");
		application.setAttribute("msg1", "app");
	%>
	<div>java:<%=msg1 %></div>
	<div>el: ${msg1 }</div>
	<div>page: ${pageScope.msg1 }</div>
	<div>request: ${requestScope.msg1 }</div>
	<div>session: ${sessionScope.msg1 }</div>
	<div>application: ${applicationScope.msg1 }</div>
</body>
</html>











