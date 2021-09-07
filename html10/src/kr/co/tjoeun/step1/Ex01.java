package kr.co.tjoeun.step1;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex01 implements javax.servlet.Servlet{
	ServletConfig config;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("최초 요청시");
		this.config=config;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("매 페이지 요청시");
		OutputStream os = res.getOutputStream();
		os.write("<h1>hello servlet</h1>".getBytes());
		os.flush();
		os.close();
	}

	@Override
	public void destroy() {
		System.out.println("컨테이너 종료시");
	}

	@Override
	public ServletConfig getServletConfig() {
		return config;
	}

	@Override
	public String getServletInfo() {
		return "servlet info....";
	}

}
