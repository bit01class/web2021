package kr.co.mvc01.controller;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mvc01.model.Dept12Dto;
import kr.co.mvc01.utils.MyOracle;

public class DeptListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		create or replace procedure dept12list
		(cur out sys_refcursor)
		is
		begin
			open cur for select * from dept12;
		end;
		/
		*/
		String sql="{call dept12list(?)}";
		ArrayList<Dept12Dto> list=new ArrayList<>();
		Connection conn=null;
		CallableStatement cstmt=null;
		ResultSet rs=null;
		try {
			conn=MyOracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.execute();
			rs=(ResultSet) cstmt.getObject(1);
			while(rs.next()) {
				Dept12Dto bean=new Dept12Dto();
				bean.setDeptno(rs.getInt(1));
				bean.setDname(rs.getString(2));
				bean.setLoc(rs.getString(3));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(cstmt!=null)cstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		req.setAttribute("alist", list);
		
		RequestDispatcher rd=req.getRequestDispatcher("dept.jsp");
		rd.forward(req, resp);
	}
}










