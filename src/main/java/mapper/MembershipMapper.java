package mapper;


import java.util.List;
import java.util.Map;

import entity.LoginVO;
import entity.Memership;
import entity.MemershipVO;

public interface MembershipMapper {
	
	/** 用户登录校验。通过校验信息，返回查询到的一条记录
	 * @param map ： 需要传入一个 Map 集合作为查询条件，其中要包括 userId，password，groupId 三个键
	 * @return 返回一个 Memership 对象
	 */
	public MemershipVO login(LoginVO loginvo);

	/** 根据条件分页查询 MembershipVO 的记录
	 * @param map
	 * @return
	 */
	public List<MemershipVO> getMembershipVOsByCondition(Map<String, Object> map);

	/** 根据 user_id 来查询 Memership
	 * @param user_id_
	 * @return 返回 Memership 对象
	 */
	public Memership getMembershipById(String user_id_);

	/** 添加一个 memership
	 * @param memership
	 * @return 返回操作成功的记录数
	 */
	public int addMembership(Memership memership);

	/** 修改一个 memership
	 * @param memership
	 * @return 返回操作成功的记录数
	 */
	public int updateMembership(Memership memership);
}
