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
		margin:0px auto;
	}
	body>div>header{
		height: 80px;
	}
	body>div>header>h1{}
	body>div>header>div{}
	body>div>nav{
		background-color: gray;
		height: 35px;
	}
	body>div>nav>a{
		background-color: darkgray;
		display: inline-block;
		width: 100px;
		height: 35px;
		color:white;
		text-align: center;
		line-height: 35px;
		text-decoration: none;
		float: left;
		margin: 0px 50px;
	}
	body>div>section{}
</style>
</head>
<body>
<div>
	<header>
		<h1>더조은교육센터</h1>
		<div></div>
	</header>
	<nav>
		<a href="index.jsp">HOME</a>
		<a href="intro.jsp">INTRO</a>
		<a href="list.jsp">BBS</a>
		<a href="login.jsp">LOGIN</a>
	</nav>
	<section>
		<% session.invalidate(); %>
		<h2>이용해주셔서 감사합니다</h2>
	</section>
</div>
</body>
</html>