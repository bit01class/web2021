package kr.co.mvc01.controller;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mvc01.utils.MyOracle;

public class DeptAddController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("add.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int deptno=Integer.parseInt(req.getParameter("deptno"));
		String dname=req.getParameter("dname");
		String loc=req.getParameter("loc");
		/*
		create or replace procedure dept12add
		(v_deptno dept12.deptno%type,v_dname dept12.dname%type,v_loc dept12.loc%type)
		is
		begin
		insert into dept12 values (v_deptno,v_dname,v_loc);
		commit;
		end;
		/
		*/
		String sql="{call dept12add(?,?,?)}";
		Connection conn=null;
		CallableStatement cstmt=null;
		
		try {
			conn=MyOracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.setInt(1, deptno);
			cstmt.setString(2, dname);
			cstmt.setString(3, loc);
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
		
		resp.sendRedirect("dept.do");
	}
}










