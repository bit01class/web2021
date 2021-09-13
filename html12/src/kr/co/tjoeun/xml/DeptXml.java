package kr.co.tjoeun.xml;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tjoeun.util.MyOracle;

public class DeptXml extends HttpServlet {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int deptno=Integer.parseInt(req.getParameter("deptno"));
		String dname=req.getParameter("dname");
		String loc=req.getParameter("loc");
		String sql="insert into dept12 values ("+deptno+",'"+dname+"','"+loc+"')";
		try {
			conn=MyOracle.getConnection();
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/xml;charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<root>");
		String sql="select * from dept12 order by deptno";
		try {
			conn=MyOracle.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				out.println("<dept>");
				out.println("<deptno>"+rs.getInt("deptno")+"</deptno>");
				out.println("<dname>"+rs.getString("dname")+"</dname>");
				out.println("<loc>"+rs.getString("loc")+"</loc>");
				out.println("</dept>");
			}
		}catch(SQLException e) {
		}finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		out.println("</root>");
	}
}









