<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String empno=request.getParameter("empno");
String ename=request.getParameter("ename");
String sal=request.getParameter("sal");
String sql="insert into emp07 (empno,ename,hiredate,sal) values ("
			+empno+",'"+ename+"',sysdate,"+sal+")";

String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String password="tiger";

Class.forName(driver);
try(
		java.sql.Connection conn=java.sql.DriverManager.getConnection(url, user, password);
		java.sql.Statement stmt=conn.createStatement();
		){
	stmt.executeUpdate(sql);
}
%>
</body>
</html>





