package jspbook.ch07;
/**
 * File : AddrBean.java
 * Desc : 주소록 빈즈 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class AddrBean {
	//멤버변수 선언
	private String username;
	private String tel;
	private String email;
	private String sex;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
}
