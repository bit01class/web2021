package kr.co.tjoeun.upload;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Ex01Controller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd=req.getRequestDispatcher("ex01.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// file upload
		// 1 = 1byte
		// 1024byte = 1kb
		// 1024*1024byte=1024kb=1mb;
		int size=1024*1024*5;//5mb;
		String dir=req.getRealPath("upload");
		DefaultFileRenamePolicy dfrp=new DefaultFileRenamePolicy();
		MultipartRequest mr=new MultipartRequest(req, dir,size,"utf-8",dfrp);
		
		String empno=mr.getParameter("empno");
		String ename=mr.getParameter("ename");
		String filename=mr.getFilesystemName("file");
		String origin=mr.getOriginalFileName("file");
		req.setAttribute("filename", filename);
		req.setAttribute("originalname", origin);
		RequestDispatcher rd=req.getRequestDispatcher("ex02.jsp");
		rd.forward(req, resp);
	}
}







