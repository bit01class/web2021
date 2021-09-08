package kr.co.tjoeun.xml;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex11 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/xml; charset=utf-8");
		PrintWriter out = resp.getWriter();
		java.net.URL url=new URL("http://www.weather.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=109");
		URLConnection conn = url.openConnection();
		InputStream is=conn.getInputStream();
		InputStreamReader isr=new InputStreamReader(is);
		BufferedReader br=new BufferedReader(isr);
		String msg=null;
		while((msg=br.readLine())!=null) {
			out.println(msg);
		}
		br.close();
		isr.close();
		is.close();
	}
}








