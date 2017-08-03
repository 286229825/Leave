package service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Leave;
import mapper.LeaveMapper;

@Service
public class LeaveService {

	@Resource
	private LeaveMapper leaveMapper;
	
	/** 添加一个请假单
	 * @param leave
	 * @return 返回操作成功的数量
	 */
	@Transactional
	public int add(Leave leave) {
		// TODO Auto-generated method stub
		return leaveMapper.add(leave);
	}

	/** 根据请假单的id来查询一个请假单
	 * @param id
	 * @return 返回查询到的Leave对象
	 */
	public Leave findById(Integer id) {
		// TODO Auto-generated method stub
		return leaveMapper.findById(id);
	}

	/** 分页查询指定用户的请假单
	 * @param queryMap ：查询条件，里面有分页的参数start（起始页）、size（每页的大小）、userId（用户ID）
	 * @return 返回查询到的Leave集合
	 */
	public List<Leave> getListByLimit(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return leaveMapper.getListByLimit(queryMap);
	}

	/** 获取指定用户所有的请假单的数量
	 * @param userId : 用户ID
	 * @return 返回请假单的数量
	 */
	public int getTotalNumber(String userId) {
		// TODO Auto-generated method stub
		return leaveMapper.getTotalNumber(userId);
	}

	/** 更新一条请假单
	 * @param leave2
	 */
	public void update(Leave leave2) {
		// TODO Auto-generated method stub
		leaveMapper.update(leave2);
	}

	/** 根据流程实例ID来查询一条Leave记录
	 * @param processInstanceId ： 表示用作查询参数的流程实例ID
	 * @return 返回一个Leave对象
	 */
	public Leave getByProcessInstanceId(String processInstanceId) {
		// TODO Auto-generated method stub
		return leaveMapper.getByProcessInstanceId(processInstanceId);
	}

}
