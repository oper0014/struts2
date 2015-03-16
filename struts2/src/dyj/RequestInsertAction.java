package dyj;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import test.action.SubjectDTO;
import test.interceptor.SuperIbatis;

public class RequestInsertAction implements SuperIbatis, ModelDriven, Preparable, SessionAware{
	public static  SqlMapClient sqlMapper;
	private List<SubjectDTO> list = new ArrayList<SubjectDTO>();;	 
	private Map sessionMap;
	private SubjectDTO dto;
	
	public String execute(){
		try {
			list = sqlMapper.queryForList("test.selectAll");
		} catch (SQLException e) {
		 
			e.printStackTrace();
		}
		
		return "success";
	}


	public List<SubjectDTO> getList() {
		return list;
	}

	 
	public void setSession(Map arg0) {
		this.sessionMap=arg0;	
	}

	@Override
	public void prepare() throws Exception {
		dto=new SubjectDTO();
	}

	@Override
	public Object getModel() {
		return dto;
	}

	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		this.sqlMapper=sqlMapper;
	}
	
	

}
