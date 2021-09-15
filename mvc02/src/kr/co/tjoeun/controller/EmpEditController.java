package kr.co.tjoeun.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tjoeun.model.EmpDao;
import kr.co.tjoeun.model.EmpDto;

public class EmpEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletConfig config=getServletConfig();
		String path=config.getInitParameter("path");
		
		int empno=Integer.parseInt(req.getParameter("idx"));
		EmpDao dao=new EmpDao();
		EmpDto bean=dao.selectOne(empno);
		req.setAttribute("bean", bean);
		req.setAttribute("title", "수정 페이지");
		req.setAttribute("path", path);
		RequestDispatcher rd=req.getRequestDispatcher(path+"empOne.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int empno=Integer.parseInt(req.getParameter("empno"));
		String ename=req.getParameter("ename");
		System.out.println(ename);
		int sal=0;
		try {
			sal=Integer.parseInt(req.getParameter("sal"));
		}catch(NumberFormatException e) {}
		
		EmpDao dao=new EmpDao();
		dao.update(empno, ename, sal);
		resp.sendRedirect("detail.do?idx="+empno);
	}
}














