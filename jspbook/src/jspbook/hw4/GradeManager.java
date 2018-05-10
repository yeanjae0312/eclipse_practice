package jspbook.hw4;

import java.util.ArrayList;
import java.util.List;

import jspbook.hw4.GradeBean;

public class GradeManager {

	List<GradeBean> gradelist = new ArrayList<GradeBean>();

	public void add(GradeBean gb) {
		gradelist.add(gb);
	}
	
	public List<GradeBean> getGradeList() {
		return gradelist;
	}
	
	public GradeBean getGrade(String name) {
		for(GradeBean gb : gradelist) {
			if(gb.getUsername().equals(name))
				return gb;
		}
		return null;
	}

}
