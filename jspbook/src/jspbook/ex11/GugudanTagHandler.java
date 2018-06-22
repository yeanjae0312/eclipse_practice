package jspbook.ex11;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class GugudanTagHandler extends SimpleTagSupport {
	private String begin;
	private String end;
	
	public void doTag() throws IOException {
		JspWriter out = getJspContext().getOut();
		
		int i_begin = Integer.parseInt(begin);
		int i_end = Integer.parseInt(end);
		
		
		for(int i=i_begin; i<=i_end; i++) {
			for(int j=1; j<=9; j++) {
				out.println(i+"*"+j+"="+i*j);
			}
		}
	}

}
