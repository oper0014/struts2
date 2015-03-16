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
 * 서동우 담당
 * 5번 예비군편입신고서(남자만)
 * */
public class ArmyAction implements Preparable,SessionAware,ModelDriven,SuperIbatis{
	private SqlMapClient sqlMapper;
	private MemberDTO dto=null;
	private ArmyDTO dto2=null;
	private Map sessionMap=null;
	public String execute(){	
		String id=(String) sessionMap.get("memId");//세션에서 id 가져옴
		System.out.println("군 입영에서 새션 아이디:"+id);
		//개인정보 조회
		/*
		try {
			dto = (MemberDTO) sqlMapper.queryForObject("test.selectTuition", id);
			System.out.println("dto.getId():"+dto.getId()+"grade:"+dto.getGrade());
		} catch (SQLException e) {e.printStackTrace();}
		*/
		try {
			dto2 = (ArmyDTO) sqlMapper.queryForObject("test.selectArmy", id);//군입영 테이블에서 세션 id로 dto받아옴
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
