package test.interceptor;

import com.opensymphony.xwork2.interceptor.Interceptor;

import java.io.IOException;
import java.io.Reader;

import test.action.MemberDTO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionInvocation;


public class IbatisInterceptor implements Interceptor{
	private MemberDTO dto=null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	@Override
	public void destroy() {	}
	@Override
	public void init() {
		try {
			reader = Resources.getResourceAsReader("sqlMapConfig.xml");// sqlMapConfig.xml ������ ���������� �����´�.
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
			reader.close();
		} catch (IOException e) {e.printStackTrace();}
	}
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Object obj=arg0.getAction();
		if(obj instanceof SuperIbatis){
			SuperIbatis ibatis=(SuperIbatis)obj;
			ibatis.setIbatis(sqlMapper);
		}
		return arg0.invoke();
	}

}

