package kr.co.tjoeun.xml;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex03 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println("doGet id="+id);
//		resp.setContentType("application/xml; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<root>");
		out.println("<item>");
		out.println("<ele>"+id+"</ele>");		
		out.println("</item>");
		out.println("</root>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println("doPost id="+id);
//		resp.setContentType("application/xml; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<root>");
		out.println("<item>");
		out.println("<ele>"+id+"</ele>");		
		out.println("</item>");
		out.println("</root>");
	}
}











