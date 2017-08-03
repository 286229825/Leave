package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Group;
import mapper.GroupMapper;

@Service
public class GroupService {
	@Resource
	private GroupMapper groupMapper;

	/** 查询所有用户组
	 * @return 返回用户组的 List 集合
	 */
	public List<Group> findGroupList(){
		List<Group> list = groupMapper.findGroupList();
		return list;
	}

	/** 添加用户组信息
	 * @param group ： 会从前端传入一个 Group 对象作为添加的数据
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	@Transactional
	public int add(Group group) {
		// TODO Auto-generated method stub
		return groupMapper.add(group);
	}

	/** 修改用户组信息
	 * @param group ： 会从前端传入一个 Group 对象作为修改的数据
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	@Transactional
	public int update(Group group) {
		// TODO Auto-generated method stub
		return groupMapper.update(group);
	}

	/** 检查该用户组是否存在
	 * @param group ： 会从前端传入一个 groupId 作为检查的依据
	 * @return ： 返回操作是否存在这样的用户组
	 * @throws Exception
	 */
	public Group findById(String groupId) {
		// TODO Auto-generated method stub
		return groupMapper.findById(groupId);
	}

	/** 根据 id 删除用户
	 * @param id
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	@Transactional
	public void delete(String groupId) {
		// TODO Auto-generated method stub
		groupMapper.delete(groupId);
	};
}
