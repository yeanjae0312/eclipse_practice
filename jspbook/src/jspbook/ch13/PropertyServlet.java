package jspbook.ch13;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * File : PropertyServlet.java
 * Desc : 초기값 테스트를 위한 서블릿 예제
 * @author 황희정(dinfree@dinfree.com)
 */

// 서블릿 선언 애너테이션
@WebServlet(
		// 서블릿 호출 URL 지정
		urlPatterns = { "/PropertyServlet" }, 
		// 서블릿 초기화 파라미터 지정
		initParams = { 
				@WebInitParam(name = "name1", value = "user1"), 
				@WebInitParam(name = "name2", value = "user2")
		})
public class PropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PropertyServlet() {
        super();
    }

    // GET 방식 호출인 경우 doPost() 로 포워딩
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	// POST 방식 요청인 경우 실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		out.println("<HTML><BODY><center>");
		out.println("<H2>ch14:PropertyServlet</H2>");
		out.println("<HR>");
		// 서블릿 초기화 파라미터로 전달된 값 출력
		out.println("name1 : "+getInitParameter("name1")+"<BR>");
		out.println("name2 : "+getInitParameter("name2"));

		out.println("<HR>");
		// 웹 어플리케이션 초기호 파라미터로 전달된 값 출력
		out.println("name3 : "+getServletContext().getInitParameter("name3"));
		out.println("</center></BODY></HTML>");
	}
}




