package kr.co.tjoeun.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tjoeun.model.EmpDao;
import kr.co.tjoeun.model.EmpDto;

public class EmpListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletConfig config = getServletConfig();
		
		String path=config.getInitParameter("path");
		
		EmpDao dao=new EmpDao();
		ArrayList<EmpDto> list = dao.list();
		req.setAttribute("alist", list);
		req.setAttribute("path", path);
		RequestDispatcher rd=req.getRequestDispatcher(path+"emp.jsp");
		rd.forward(req, resp);
	}
}










