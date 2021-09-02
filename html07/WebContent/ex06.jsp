{"emp":[
<%@ page import="java.sql.*" %>
<%
String sql="select empno,ename,hiredate,sal from emp07";
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String password="tiger";

Class.forName(driver);
try(
		Connection conn=DriverManager.getConnection(url, user, password);
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		){
	boolean boo=false;
	while(rs.next()){
		if(boo){out.print(",");}else{boo=true;}
%>
{"empno":<%=rs.getInt("empno") %>,"ename":"<%=rs.getString("ename") %>"
	,"hiredate":"<%=rs.getDate("hiredate") %>","sal":<%=rs.getInt("sal") %>}
<%}} %>

]}
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
    
    
    
    
    