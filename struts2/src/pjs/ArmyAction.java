package pjs;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import test.action.MemberDTO;
import test.action.TuitionDTO;
import test.interceptor.SuperIbatis;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/*
 * ������ ���
 * 5�� �������ԽŰ�(���ڸ�)
 * */
public class ArmyAction implements Preparable,SessionAware,ModelDriven,SuperIbatis{
	private SqlMapClient sqlMapper;
	private MemberDTO dto=null;
	private ArmyDTO dto2=null;
	private Map sessionMap=null;
	public String execute(){	
		String id=(String) sessionMap.get("memId");//세션 Strubg  값
		System.out.println(" 아이디 세션 :"+id);
	
		try {
			dto2 = (ArmyDTO) sqlMapper.queryForObject("test.selectArmy", id);// sql쿼리 삽입
			System.out.println("dto2.getId():"+dto.getId()+"getJoin:"+dto2.getJoin());
		} catch (Exception e) {e.printStackTrace();}
		
		String result ="success";
		return result;
	}
	public MemberDTO getDto() {
		return dto;
	}
	public ArmyDTO getDto2() {
		return dto2;
	}
	@Override
	public Object getModel() {
		return dto;
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
	public void prepare() throws Exception {
		dto=new MemberDTO();
	
	}
}
