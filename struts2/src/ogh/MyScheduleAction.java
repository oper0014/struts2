package ogh;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import test.interceptor.SuperIbatis;

public class MyScheduleAction implements SuperIbatis{
	
	private SqlMapClient sqlMapper = null;
	private TimeDTO dto = null;
	private List<TimeDTO> list = new ArrayList<TimeDTO>();
	private String result ="success";

	@Override
	public void setIbatis(SqlMapClient sqlMapper) {
		// TODO Auto-generated method stub
		this.sqlMapper = sqlMapper;
	}

	public String execute(){	
		try{
			list = sqlMapper.queryForList("schedule.selectAll",dto);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return result;
	}
	
	public List getList(){
		return list;
	}
}
