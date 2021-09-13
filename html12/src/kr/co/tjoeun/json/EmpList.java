package kr.co.tjoeun.json;

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

public class EmpList extends HttpServlet {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String msg="{\"emp\":[";
		String sql="select * from emp";
		try {
			conn=MyOracle.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				if(rs.getRow()!=1)msg+=',';
				msg+="{";
				msg+="\"empno\":"+rs.getInt("empno");
				msg+=",\"ename\":\""+rs.getString("ename")+"\"";
				msg+=",\"hiredate\":\""+rs.getDate("hiredate")+"\"";
				msg+=",\"sal\":"+rs.getInt("sal");
				msg+="}";
			}
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
		
		msg+="]}";
		resp.setContentType("application/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(msg);
	}
}
