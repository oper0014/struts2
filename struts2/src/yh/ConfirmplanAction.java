package yh;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import test.interceptor.SuperIbatis;
import yh.pagingAction;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ConfirmplanAction implements Preparable,ModelDriven,SuperIbatis {	//��ȣ - �ش���� ��ȸ
	public static Reader reader;
	public static SqlMapClient sqlMapper_sub;
	private subjectDTO dto=null;
	private Map sessionMap=null;
	private int totalSubject;
	private int currentPage = 1;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;
	private List<subjectDTO> sub_list = new ArrayList<subjectDTO>();
	private SqlMapClient sqlMapper;
	
	public ConfirmplanAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper_sub = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}
	public String execute()throws Exception{
		sub_list = sqlMapper_sub.queryForList("selectTwo");
		totalSubject = sub_list.size();
		page = new pagingAction(currentPage, totalSubject, blockCount, blockPage); // pagingAction ��ü ����.
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalSubject;
		
		if(page.getEndCount() < totalSubject)
			lastCount = page.getBlockCount() + 1;
		
		sub_list = sub_list.subList(page.getStartCount(), lastCount);
		return "success";
	}

	@Override
	public Object getModel() {
		return dto;
	}
	@Override
	public void prepare() throws Exception {
		dto=new subjectDTO();		//dto�� �����ϸ� ���Թ޴°͵�
	}
	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		this.sqlMapper_sub=sqlMapper;
		}
}
