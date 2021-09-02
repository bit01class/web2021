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
		<%@ page import="java.sql.*" %>
		<%
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String sql="select count(*) from user07 where id='"+id+"' and pw='"+pw+"'";
		
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		Class.forName(driver);
		int cnt=0;
		try(
				Connection conn=DriverManager.getConnection(url, user, password);
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				){
			if(rs.next()) cnt=rs.getInt(1);
		}
		if(cnt>0){
			session.setAttribute("seccess", true);
			session.setAttribute("id",id);
		}
		Object obj=session.getAttribute("seccess");
		if(obj==null){
		%>
		<a href="login.jsp">LOGIN</a>
		<%}else{ %>
		<a href="logout.jsp">LOGOUT</a>
		<%} %>
	</nav>
	<section>
	<%if(cnt>0){ %>
		<h2><%=id %>님  로그인 되셨습니다</h2>
	<%}else{ %>
		<h2>로그인 실패</h2>
		<button>뒤 로</button>
		<script type="text/javascript">
			var btn=document.querySelector('h2+button');
			btn.onclick=function(){
				//alert('실패');
				history.back();
			};
		</script>
	<%} %>
	</section>
</div>
</body>
</html>







