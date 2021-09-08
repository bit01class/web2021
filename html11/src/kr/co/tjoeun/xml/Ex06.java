package kr.co.tjoeun.xml;

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

public class Ex06 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/xml; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<rows>");
		////
		String sql="select empno,ename,hiredate,sal from emp";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String driver="oracle.jdbc.OracleDriver";
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
				out.println("<row>");
				out.println("<empno>"+rs.getInt("empno")+"</empno>");
				out.println("<ename>"+rs.getString("ename")+"</ename>");
				out.println("<hiredate>"+rs.getDate("hiredate")+"</hiredate>");
				out.println("<sal>"+rs.getInt("sal")+"</sal>");
				out.println("</row>");
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		////
		out.println("</rows>");
	}
}









