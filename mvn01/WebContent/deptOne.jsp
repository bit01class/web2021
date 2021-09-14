<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.mvc01.model.Dept12Dto" %>
<%
Dept12Dto bean=(Dept12Dto)request.getAttribute("dto");
%>
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

</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
var boo=false;

$(function(){
	$('section a').eq(1).click(function(){
		boo=window.confirm('삭제하시겠습니까?');
		if(boo){
			$.post('delete.do','deptno='+<%=bean.getDeptno()%>,function(){
				window.location.href='dept.do';
			});
		}
		return false;
	});
	$('section a').eq(2).click(function(){
		history.back();
		return false;
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
				<h2>상세 페이지</h2>
					<div>
						<label>deptno</label><span><%=bean.getDeptno() %></span>
					</div>
					<div>
						<label>dname</label><span><%=bean.getDname()%></span>
					</div>
					<div>
						<span><%=bean.getLoc() %></span>
					</div>
					<div>
						<a href="edit.do">수정</a>
						<a href="delete.do">삭제</a>
						<a href="#">뒤로</a>
					</div>
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