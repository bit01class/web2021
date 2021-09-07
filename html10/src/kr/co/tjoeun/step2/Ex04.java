package kr.co.tjoeun.step2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex04 extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<body>");
		out.println("<form action=\"ex14.html\" method=\"post\">");
		out.println("id<input type=\"text\" name=\"id\">");
		out.println("<button>submit</button>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}

}
