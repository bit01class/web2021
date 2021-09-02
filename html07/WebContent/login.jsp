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
	body>div>section>form{
		margin-left:200px;
	}
	body>div>section>form>div{}
	body>div>section>form>div>label{
		display: inline-block;
		width: 100px;
	}
	body>div>section>form>div>input{}
	body>div>section>form>div>button{}
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
		<h2>로그인 페이지</h2>
		<form action="result.jsp">
			<div>
				<label for="id">id</label>
				<input type="text" name="id" id="id" />
			</div>
			<div>
				<label for="pw">pw</label>
				<input type="text" name="pw" id="pw" />
			</div>
			<div>
				<button type="submit">로그인</button>
				<button type="reset">취 소</button>
				<button type="button">뒤 로</button>
			</div>
		</form>
	</section>
</div>
</body>
</html>




