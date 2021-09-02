<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<root>
	<login>
	<%@ page import="java.sql.*" %>
	<%
	int cnt=0;
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	String sql="select count(*) from user07 where id='"+id+"' and pw='"+pw+"'";
	
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
		if(rs.next()) cnt=rs.getInt(1);
	}
	
	if(cnt>0){
	%>
		<success>true</success>
	<%
	}else{
	%>
		<success>false</success>
	<%
	}
	%>
		<id><%=id %></id>
	</login>
</root>
    