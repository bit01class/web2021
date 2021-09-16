<%@page import="java.util.StringTokenizer"%>
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
	<h1>jstl util</h1>
	<c:set var="msgs">java,DB,Web,,Framework</c:set>
	<%
		String msg=(String)pageContext.getAttribute("msgs");
		StringTokenizer stk=new StringTokenizer(msg,",");
		while(stk.hasMoreTokens()){
			System.out.println(stk.nextToken());
		}
	%>
	<ul>
		<c:forTokens items="${msgs }" delims="," var="msg">
			<li>${msg }</li>
		</c:forTokens>
	</ul>
</body>
</html>