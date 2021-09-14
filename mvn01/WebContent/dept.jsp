<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body>div{
	width: 800px;
	background-color: white;
	margin:0px auto;
}
nav,footer{
	background-color: gray;
	text-align: center;
}
section{}
section table,section table>thead>tr>th,section table>tbody>tr>td{
	border:1px solid gray;
}
section table{
	border-collapse: collapse;
	width: 500px;
	margin:0px auto;
}
section table>tbody>tr>td{
	height: 35px;
}
section table>tbody>tr>td>a{
	display: block;
	text-decoration: none;
	color:gray;
}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

$(function(){
	$('section table tr>td:first-child').each(function(){
		var href=$(this).find('a').attr('href');
		$(this).siblings().html(function() {
			  return "<a href='"+href+"'>"+$( this ).text()+"</a>";
		});
	});
});

</script>
</head>
<body>
	<div>
		<header>
			<h1>더조은교육센터</h1>
		</header>
		<nav>
			<a href="index.do">HOME</a>
			<a href="intro.do">INTRO</a>
			<a href="emp.do">EMP</a>
			<a href="dept.do">DEPT</a>
		</nav>
		<section>
			<div>
				<h2>리스트 페이지</h2>
				<table>
					<thead>
						<tr>
							<th>deptno</th>
							<th>dname</th>
							<th>loc</th>
						</tr>
					</thead>
					<tbody>
<%
java.util.ArrayList<kr.co.mvc01.model.Dept12Dto> list=null;
list=(java.util.ArrayList<kr.co.mvc01.model.Dept12Dto>)request.getAttribute("alist");
for(kr.co.mvc01.model.Dept12Dto bean:list){
%>					
						<tr>
							<td><a href="one.do?deptno=<%=bean.getDeptno() %>"><%=bean.getDeptno() %></a></td>
							<td><%=bean.getDname() %></td>
							<td><%=bean.getLoc() %></td>
						</tr>
<%} %>					
					</tbody>
				</table>
				<a href="add.do">입력</a>
			</div>
		</section>
		<footer>
			<p>더조은컴퓨터아카데미</p>
			<p>대표번호1588.8748</p>
			<p>&copy; THEJOEUN ACADEMY Corp.</p>
		</footer>
	</div>
</body>
</html>