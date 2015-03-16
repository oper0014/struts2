package pjs;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import test.action.MemberDTO;
import test.interceptor.SuperIbatis;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class GradeAction implements SessionAware, Preparable,ModelDriven,SuperIbatis {
	private MemberDTO dto=null;
	private SqlMapClient sqlMapper;
	private Map sessionMap=null;
	public String execute(){	
		
		String result ="success";
		return result;
	}
	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return dto;
	}
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void setSession(Map arg0) {
		// TODO Auto-generated method stub
		
	}
}
