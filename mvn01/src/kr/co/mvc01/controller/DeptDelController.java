package kr.co.mvc01.controller;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mvc01.utils.MyOracle;

public class DeptDelController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		create or replace procedure dept12del
		(v_deptno dept.deptno%type)
		is
		begin
			delete from dept12 where deptno=v_deptno;
			commit;
		end;
		/
		*/
		String sql="{call dept12del(?)}";
		int deptno=Integer.parseInt(req.getParameter("deptno"));
		Connection conn=null;
		CallableStatement cstmt=null;
		
		try {
			conn=MyOracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.setInt(1, deptno);
			cstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(cstmt!=null)cstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}









