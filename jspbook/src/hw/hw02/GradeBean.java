package hw.hw02;

public class GradeBean {
	
	//멤버변수 선언
	private String username;
	private String score;
	
	private int i_score;
	
	public GradeBean() {
		
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username=username;
	}
	
	
	public String getGrade() {
		i_score=Integer.parseInt(score);
		
		if(i_score<=100 && i_score>=90) {
			return "A";
		}
		else if(i_score<90 && i_score>=80) {
			return "B";
		}
		else if(i_score<80 && i_score>=70) {
			return "C";
		}
		else if(i_score<70 && i_score>=60) {
			return "D";
		}
		else {
			return "F";
		}
	}
	
	
	public void setScore(String score) {
		this.score=score;
	}
	
	public String getScore() {
		return score;
	}

}
