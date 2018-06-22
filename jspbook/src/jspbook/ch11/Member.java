package jspbook.ch11;

/**
 * File : Member.java
 * Desc : Member 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class Member {

	// 회원 정보 멤버 변수
	private String name;
	private String email;
	
	public Member(String name,String email) {
		this.name = name;
		this.email = email;
	}
	
	// 기본 생성자인 경우 다음과 같이 신규 정보로 초기화
	public Member() {
		name="홍길동";
		email="test@test.net";
	}

	public String getName() { return name; }
	public String getEmail() { return email; }
	
	public void setEmail(String email) {
		this.email = email;
	}
	public void setName(String name) {
		this.name = name;
	}
}