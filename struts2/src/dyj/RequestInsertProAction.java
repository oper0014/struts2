package dyj;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import test.interceptor.SuperIbatis;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class RequestInsertProAction implements ModelDriven, SessionAware, SuperIbatis, Preparable{
	public static SqlMapClient sqlMapper;
	private Map sessionMap;
 
	public String execute(){
		String id=(String) sessionMap.get("memId");
		try {
			sqlMapper.insert("",id);
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return "success";
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		this.sqlMapper=sqlMapper;
		
	}

	@Override
	public void setSession(Map arg0) {
		this.sessionMap=arg0;
		
	}

	@Override
	public Object getModel() {
		 return null;
	}
	
	
}
