package jspbook.ch11;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;

import java.util.*;

/**
 * File : InitialMember.java
 * Desc : Member 데이터 초기화를 위한 리스너 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
@WebListener
public class  InitialMember implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
			ServletContext context = sce.getServletContext();
			ArrayList<Member> datas = new ArrayList<Member>();
			
			// JSTL 예제를 위해 0~7 까지의 샘플 데이터를 생성
			for(int i=0;i<8;i++) {
				Member data = new Member("황희정"+i,"test"+i+"@test.net");
				datas.add(data);
			}
			
			// email 이 빠진 2개 샘플 데이터 추가
			datas.add(new Member("홍길동",null));
			datas.add(new Member("김길동",null));

			// application scope 에 members 및 member 객체 저장
			context.setAttribute("members", datas);
			context.setAttribute("member",new Member());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {}
}