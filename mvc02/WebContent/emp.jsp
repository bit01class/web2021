<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="template/header.jspf" %>
<style type="text/css">
#content table,#content table>thead>tr>th,#content table>tbody>tr>td{
	border:1px solid gray;
}
#content table{
	border-collapse: collapse;
	width:500px;
	margin:10px auto;
}
#content table>tbody>tr>td{
	height:30px;
}
#content table>tbody>tr>td>a{
	display: block;
	color:black;
	text-decoration: none;
}
</style>
</head>
<body>
<%@ include file="template/menu.jspf" %>
	<h2>EMP LIST Page</h2>
	<%@ page import="java.util.*,kr.co.tjoeun.model.EmpDto" %>
	<%
	ArrayList<EmpDto> list= (ArrayList<EmpDto>)request.getAttribute("alist");
	%>
	<table>
		<thead>
			<tr>
				<th>empno</th>
				<th>ename</th>
				<th>hiredate</th>
				<th>sal</th>
			</tr>
		</thead>
		<tbody>
		<%for(EmpDto bean:list){ %>
			<tr>
				<td><a href="detail.do?idx=<%=bean.getEmpno() %>"><%=bean.getEmpno() %></a></td>
				<td><a href="detail.do?idx=<%=bean.getEmpno() %>"><%=bean.getEname() %></a></td>
				<td><a href="detail.do?idx=<%=bean.getEmpno() %>"><%=bean.getHiredate() %></a></td>
				<td><a href="detail.do?idx=<%=bean.getEmpno() %>"><%=bean.getSal() %></a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	<a href="add.do">입력</a>
<%@ include file="template/footer.jspf" %>
</body>
</html>








