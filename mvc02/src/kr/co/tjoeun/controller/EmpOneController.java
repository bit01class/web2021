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

public class EmpOneController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletConfig config = getServletConfig();
		String path=config.getInitParameter("path");
		
		//// model
		int empno=Integer.parseInt(req.getParameter("idx"));
		EmpDao dao=new EmpDao();
		EmpDto bean = dao.selectOne(empno);
		req.setAttribute("bean", bean);
		req.setAttribute("title", "상세 페이지");
		//// view
		req.setAttribute("path", path);
		RequestDispatcher rd=req.getRequestDispatcher(path+"empOne.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int empno=Integer.parseInt(req.getParameter("idx"));
		EmpDao dao=new EmpDao();
		dao.delete(empno);
		resp.sendRedirect("list.do");
	}
}













