package test.databean;
 //majornum  추가됨 
public class SubjectDTO {
	private String snumber;
	private String sname;
	private int stime;
	private String sclass;
	private int scredit;
	private String proid;
	private int majornum;
	
	public int getMajornum() {
		return majornum;
	}
	public void setMajornum(int majornum) {
		this.majornum = majornum;
	}
	public String getSnumber() {
		return snumber;
	}
	public void setSnumber(String snumber) {
		this.snumber = snumber;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getStime() {
		return stime;
	}
	public void setStime(int stime) {
		this.stime = stime;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}
	public int getScredit() {
		return scredit;
	}
	public void setScredit(int scredit) {
		this.scredit = scredit;
	}
	public String getProid() {
		return proid;
	}
	public void setProid(String proid) {
		this.proid = proid;
	}
	

}
