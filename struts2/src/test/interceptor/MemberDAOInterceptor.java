package test.interceptor;

import test.action.MemberDAO;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
/*���� ��� ����*/
public class MemberDAOInterceptor  implements Interceptor{//DAO ��ü ����(DI)

	private MemberDAO dao =null;	
	public void destroy() {		
	}
	@Override
	public void init() {
		// ������ ����� ���� 1ȸ ����
		dao = new MemberDAO();
	}
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Object obj = arg0.getAction();
		if(obj instanceof MemberDAOinterface){// instanceof : ����̳� ���� ���谡 �ξ��������� true(�������� �ȴ�.)
			MemberDAOinterface inter=(MemberDAOinterface)obj;//������ �̿�
			inter.setMemberDAO(dao);	
		}
		return arg0.invoke();
	}

}