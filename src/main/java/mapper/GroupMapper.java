package mapper;

import java.util.List;

import entity.Group;

public interface GroupMapper {
	
	/** 查询所有用户组
	 * @return 返回用户组的 List 集合
	 */
	public List<Group> findGroupList();
	
	/** 根据 id 查询用户组
	 * @param id 需要传入用户组 id作为查询条件
	 * @return 返回用户组
	 */
	public Group findById(String groupId);

	/** 添加用户组信息
	 * @param group ： 会从前端传入一个 Group 对象作为添加的数据
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	public Integer add(Group group);

	/** 修改用户组信息
	 * @param group ： 会从前端传入一个 Group 对象作为修改的数据
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	public Integer update(Group group);

	/** 根据 id 删除用户
	 * @param id
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	public void delete(String groupId);
}
