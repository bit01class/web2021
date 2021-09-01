<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/frame.css"/>
<style type="text/css">
section{}
section>table{
	width: 80%;
	margin:0px auto;
	border-collapse: collapse;
}
section>table tr{}
section>table tr>td{}
section>table tr>td>a{
	display: block;
	color:black;
	text-decoration: none;
	height: 35px;
	line-height: 35px;
}
section>table tr>th{
	background-color: gray;
}
section>table tr:nth-child(2n)>td{
	background-color: darkgray;
}
section>table,section>table tr>th,section>table tr>td{
	border:1px solid gray;
}
section>table tr>td:first-child{
	width:70px;
	text-align: right;
	padding-right: 10px;
}
section>table tr>td:last-child{
	width:100px;
	text-align: center;
}
section>table>tbody>tr:hover{
	background-color: yellow;
}
section>table+a{
	display: inline-block;
	width: 100px;
	height: 35px;
	border: 1px solid gray;
	border-radius: 10px;
	margin: 5px auto 50px auto;
	background-color: gray;
	color:white;
	text-align: center;
	line-height: 35px;
	text-decoration: none;
}

</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>리스트페이지</h2>
<table>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>글쓴이</th>
		</tr>
	</thead>
	<tbody>
	<%@ page import="java.sql.*,java.util.*" %>
	<%
	List<Map<String,String>> list=new ArrayList<>();
	String sql="select * from bbs11 order by num desc";
	String driver="oracle.jdbc.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	Class.forName(driver);
	try(
			Connection conn=DriverManager.getConnection(url,user,password);
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			){
		while(rs.next()){
			Map<String,String> bean=new HashMap<>();
			bean.put("num", rs.getString("num"));
			bean.put("sub",rs.getString("sub"));
			bean.put("id",rs.getString("id"));
			list.add(bean);
		}
	}
	for(Map<String,String> map:list){
	%>
	<tr>
		<td><a href="#"><%=map.get("num") %></a></td>
		<td><a href="#"><%=map.get("sub") %></a></td>
		<td><a href="#"><%=map.get("id") %></a></td>
	</tr>
	<%
	}
	%>
	</tbody>
</table>
<a href="add.jsp">입력</a>
<%@ include file="template/footer.jspf" %>
</body>
</html>







