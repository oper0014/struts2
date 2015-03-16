package test.databean;
 /* grade 성적 테이블 DTO 생성  */
public class gradeDTO {
private String ssection;
private String gnumber;
private String sname;
private int credit;
private int average;
private String grade;


public String getSsection() {
	return ssection;
}
public void setSsection(String ssection) {
	this.ssection = ssection;
}
public String getGnumber() {
	return gnumber;
}
public void setGnumber(String gnumber) {
	this.gnumber = gnumber;
}
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public int getCredit() {
	return credit;
}
public void setCredit(int credit) {
	this.credit = credit;
}
public int getAverage() {
	return average;
}
public void setAverage(int average) {
	this.average = average;
}
public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}
}
