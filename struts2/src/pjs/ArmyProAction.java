package pjs;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import test.action.MemberDTO;
import test.interceptor.SuperIbatis;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/*아미 dto  */
public class ArmyProAction implements Preparable,SessionAware,ModelDriven,SuperIbatis{
	private ArmyDTO dto=null;
	private SqlMapClient sqlMapper;
	private Map sessionMap=null;
	public String execute() throws Exception{
		System.out.println("dto.getArmynumber:"+dto.getArmynumber());
		String id=(String) sessionMap.get("memId");
		System.out.println("세션아이디:"+id);
		dto.setId(id);
		sqlMapper.insert("test.insertArmy", dto);//삽입하는 DTO
		String result ="success";
		return result;
	}
	@Override
	public Object getModel() {
		return dto;
	}
	@Override
	public void prepare() throws Exception {
		dto=new ArmyDTO();		//dto가는 곳
	}
	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		this.sqlMapper=sqlMapper;
	}
	@Override
	public void setSession(Map arg0) {
		this.sessionMap=arg0;	
	}

}
