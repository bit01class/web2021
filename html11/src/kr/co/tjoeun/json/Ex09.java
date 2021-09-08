package kr.co.tjoeun.json;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex09 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		/*
		{"rows":[
			{"empno":1111,"ename":"user1","hiredate":"21/09/08","sal":1000},
			{"empno":2222,"ename":"user2","hiredate":"21/09/08","sal":2000}
		]}
		*/
		String msg="{\"rows\":[";
		String sql="select empno,ename,hiredate,sal from emp";
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				if(rs.getRow()!=1)msg+=',';
				msg+="{\"empno\":"+rs.getInt("empno")+",\"ename\":\""+rs.getString("ename")
				+"\",\"hiredate\":\""+rs.getDate("hiredate")+"\",\"sal\":"+rs.getInt("sal")+"}";
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		msg+="]}";
		out.print(msg);
	}
	
	
}








