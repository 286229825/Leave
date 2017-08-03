package mapper;

import java.util.List;
import java.util.Map;

import entity.User;

public interface UserMapper {
	
	/** 添加一个用户
	 * @param user ：需要传入一个 User 对象作为添加数据
	 * @return 返回操作的记录数
	 */
	public Integer add(User user);

	/** 修改一个用户
	 * @param user ：需要传入一个 User 对象作为修改数据
	 * @return 返回操作的记录数
	 */
	public Integer update(User user);

	/** 获取所有的 User 记录数
	 * @return 返回记录数
	 */
	public Integer getTotalNumber();

	/** 根据条件查询 User 的记录
	 * @param map ： 需要传入一个map集合作为查询条件
	 * @return 返回查询到的 User 的集合
	 */
	public List<User> getUsersByCondition(Map<String, Object> map);

	/** 根据 id 来查询 User 记录
	 * @param userId ： 需要传入一个 id 作为查询条件
	 * @return 返回查询到的 User 对象
	 */
	public User findById(String userId);

	/** 根据 id 来删除用户
	 * @param userId ：需要传入一个 userId 来作为删除的依据
	 */
	public void delete(String userId);

	/** 修改用户密码
	 * @param user ： 需要传入一个 User，User里面需要有 id_ 和 pwd_ 两个字段作为修改的数据依据
	 * @return
	 */
	public int modifyPassword(User user);
}
