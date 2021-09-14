package kr.co.mvc01.controller;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mvc01.model.Dept12Dto;
import kr.co.mvc01.utils.MyOracle;

public class DeptOneController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		create or replace procedure dept12one
		(v_deptno in dept.deptno%type,cur out sys_refcursor)
		is
		begin
			open cur for select * from dept12 where deptno=v_deptno;
		end;
		/
		*/
		String sql="{call dept12one(?,?)}";
		int deptno=Integer.parseInt(req.getParameter("deptno"));
		Connection conn=null;
		CallableStatement cstmt=null;
		ResultSet rs=null;
		Dept12Dto bean=new Dept12Dto();
		try {
			conn=MyOracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.setInt(1, deptno);
			cstmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.execute();
			rs=(ResultSet)cstmt.getObject(2);
			if(rs.next()) {
				bean.setDeptno(rs.getInt("deptno"));
				bean.setDname(rs.getString("dname"));
				bean.setLoc(rs.getString("loc"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(cstmt!=null)cstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		req.setAttribute("dto", bean);
		RequestDispatcher rd=req.getRequestDispatcher("deptOne.jsp");
		rd.forward(req, resp);
	}
}










