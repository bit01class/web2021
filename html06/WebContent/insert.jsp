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
String sub=request.getParameter("sub");
String id=request.getParameter("id");
String content=request.getParameter("content");
String sql="insert into bbs11 values (bbs11_seq.nextval,'"
			+sub+"','"+id+"','"+content+"')";
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String password="tiger";

Class.forName(driver);
try(
		Connection conn=DriverManager.getConnection(url,user,password);
		Statement stmt=conn.createStatement();
		){
	stmt.executeUpdate(sql);
}
response.sendRedirect("list.jsp");
%>
</body>
</html>