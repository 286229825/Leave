package mapper;

import java.util.List;
import java.util.Map;

import entity.Leave;

public interface LeaveMapper {

	/** 添加一个请假单
	 * @param leave
	 * @return 返回操作成功的数量
	 */
	int add(Leave leave);

	/** 根据请假单的id来查询一个请假单
	 * @param id
	 * @return 返回查询到的Leave对象
	 */
	Leave findById(int id2);

	/** 分页查询指定用户的请假单
	 * @param queryMap ：查询条件，里面有分页的参数start（起始页）、size（每页的大小）、userId（用户ID）
	 * @return 返回查询到的Leave集合
	 */
	List<Leave> getListByLimit(Map<String, Object> queryMap);
	
	/** 获取指定用户所有的请假单的数量
	 * @param userId : 用户ID
	 * @return 返回请假单的数量
	 */
	int getTotalNumber(String userId);

	/** 更新一条请假单
	 * @param leave2
	 */
	void update(Leave leave2);

	/** 根据流程实例ID来查询一条Leave记录
	 * @param processInstanceId ： 表示用作查询参数的流程实例ID
	 * @return 返回一个Leave对象
	 */
	Leave getByProcessInstanceId(String processInstanceId);

}
