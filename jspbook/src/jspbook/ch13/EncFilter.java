package jspbook.ch13;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * File : EncFilter.java
 * Desc : 필터 테스트를 위한 한글 처리 필터 예제
 * @author 황희정(dinfree@dinfree.com)
 */
@WebFilter("*.jsp")
public class EncFilter implements Filter {
	private String encoding;
	
    public EncFilter() {
    }

	public void destroy() {
	}

	// 필터 처리 메서드
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 캐릭터 인코딩 설정이 없는 경우에만 캐릭터 인코딩 적용
		if(request.getCharacterEncoding() == null) {
			request.setCharacterEncoding(encoding);
			chain.doFilter(request, response); //다음 필터로 전달.
		}
	}

	// 필터 초기화시 초기화 파라미터에서 인코딩 기본값 가져옴
	public void init(FilterConfig fConfig) throws ServletException {
		this.encoding = fConfig.getServletContext().getInitParameter("encoding");
	}

}
