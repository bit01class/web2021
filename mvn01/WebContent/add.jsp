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

</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	$('button[type=button]').click(function(){
		history.back();
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
				<h2>입력 페이지</h2>
				<form method="post">
					<div>
						<label>deptno</label>
						<input type="text" name="deptno" />
					</div>
					<div>
						<label>dname</label>
						<input type="text" name="dname" />
					</div>
					<div>
						<select name="loc">
							<option>서울</option>
							<option>대전</option>
							<option>대구</option>
							<option>부산</option>
							<option>광주</option>
						</select>
					</div>
					<div>
						<button>submit</button>
						<button type="reset">reset</button>
						<button type="button">back</button>
					</div>
				</form>
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