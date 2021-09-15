package kr.co.tjoeun.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tjoeun.model.EmpDao;

public class EmpAddController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletConfig config = getServletConfig();
		
		String path=config.getInitParameter("path");
		req.setAttribute("path", path);
		RequestDispatcher rd=req.getRequestDispatcher(path+"addemp.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int empno=0;
		String ename=req.getParameter("ename");
		int sal=0;
		try {
			try {
				sal=Integer.parseInt(req.getParameter("sal"));
			}catch(NumberFormatException e) {}
			empno=Integer.parseInt(req.getParameter("empno"));
			EmpDao dao=new EmpDao();
			dao.add(empno, ename, sal);
			resp.sendRedirect("list.do");
		}catch(NumberFormatException e) {
			req.setAttribute("empno", req.getParameter("empno"));
			req.setAttribute("ename", req.getParameter("ename"));
			req.setAttribute("sal", req.getParameter("sal"));
			req.setAttribute("select", "$('input').eq(0).css('background-color','red').select();");
			doGet(req,resp);
		}	
	}
}









