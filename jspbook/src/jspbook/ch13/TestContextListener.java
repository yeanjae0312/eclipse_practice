package jspbook.ch13;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * File : TestContextListener.java
 * Desc : 초기화 파라미터 테스트를 위한 리스너 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
@WebListener
public class TestContextListener implements ServletContextListener {

    public TestContextListener() {
    }

    // 리스너 실행 메서드
    public void contextInitialized(ServletContextEvent arg0) {
		ServletContext ctx = arg0.getServletContext();
		
		// Book 객체를 만들어 application scope 에 저장
		Book mybook = new Book("자바웹프로그래밍","황희정",20000,"한빛미디어");
		ctx.setAttribute("book", mybook);
		System.out.println("TestContextListener 시작됨..");      
    }

    public void contextDestroyed(ServletContextEvent arg0) {
    }
}