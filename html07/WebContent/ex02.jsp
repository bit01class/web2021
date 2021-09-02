<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
%>
	<p><%=id %>님 로그인 중</p>
<%} %>
</body>
</html>






