package pjs;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import test.action.MemberDTO;
import test.databean.gradeDTO;
import test.interceptor.SuperIbatis;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class GradeAction implements Preparable,ModelDriven,SuperIbatis {
	private gradeDTO dto=null;
	private SqlMapClient sqlMapper;
	private Map sessionMap=null;
	String result="success";
	public String execute(){
		try{
		dto=(gradeDTO) sqlMapper.queryForObject("gradeSQL.select_grade");
	}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	public gradeDTO getDto(){
		return dto;
	}

	public void setIbatis(SqlMapClient sqlMapper) {
		// TODO Auto-generated method stub
		this.sqlMapper=sqlMapper;
	}
	
	public Object getModel() {
		// TODO Auto-generated method stub
		return dto;
	}

	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		dto=new gradeDTO();
	}
	
	
}
