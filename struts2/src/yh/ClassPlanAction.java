package yh;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import test.interceptor.SuperIbatis;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ClassPlanAction implements Preparable,ModelDriven,SuperIbatis {
//��ȣ - �ش���� ��ȸ
	public static Reader reader;
	public static SqlMapClient sqlMapper_sub;
	private subjectDTO dto=null;
	private List<subjectDTO> list = new ArrayList<subjectDTO>();
	
	public ClassPlanAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper_sub = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
	public String execute()throws Exception{ 
		///System.out.println("1111111");
		list = (List) sqlMapper_sub.queryForList("yh.list","computer");
		return "success";
	}
	
	@Override
	public Object getModel() {
		return dto;
	}
	@Override
	public void prepare() throws Exception {
		dto=new subjectDTO();
	}
	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		this.sqlMapper_sub=sqlMapper;
		}
	public subjectDTO getDto() {
		return dto;
	}
	public void setDto(subjectDTO dto) {
		this.dto = dto;
	}
	public List<subjectDTO> getList() throws SQLException {
		return list;
	}
	public void setList(List<subjectDTO> list) {
		this.list = list;
	}
}
