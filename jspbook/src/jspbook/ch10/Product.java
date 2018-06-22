package jspbook.ch10;

/**
 * File : Product.java
 * Desc : 제품 빈즈 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class Product {

	// 상품 목록을 보관할 배열
	private String[] productList = {"item1","item2","item3","item4","item5"};
	
	// 웹 테스트를 위한 변수값
	private int num1 = 10;
	private int num2 = 20;
	
	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}

	public String[] getProductList() {
		return productList;
	}
}