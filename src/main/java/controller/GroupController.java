package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Group;
import service.GroupService;

@Controller
@RequestMapping("/group")
public class GroupController {
	
	@Resource
	private GroupService groupService;
	
	/** 获取所有用户组信息，供前台下拉列表使用
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getGroupList")
	public @ResponseBody List<Group> getGroupList() throws Exception{
		List<Group> list = groupService.findGroupList();
		return list;
	}
	
	/** 添加或修改用户组信息
	 * @param group ： 会从前端传入一个 Group 对象作为添加或修改的数据，一个 flag 作为判断是修改还是添加的信息
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	@RequestMapping("/addOrUpdate")
	public @ResponseBody String addOrUpdate(Group group,Integer flag) throws Exception{
		int totalResult=0;	//操作的记录数
		if (flag==1) {
			totalResult = groupService.add(group);
		}else {
			totalResult = groupService.update(group);
		}
		if (totalResult>0) {
			return "success";
		}else {
			return "error";
		}
	}
	
	/** 检查该用户组是否存在
	 * @param group ： 会从前端传入一个 groupId 作为检查的依据
	 * @return ： 返回操作是否存在这样的用户组
	 * @throws Exception
	 */
	@RequestMapping("/checkGroup")
	public @ResponseBody String checkGroup(@RequestBody String groupId) throws Exception{
		Group group = groupService.findById(groupId);
		if (group == null) {
			return "success";
		}
		return "error";
	}
	
	/** 根据 ids 批量删除用户
	 * @param ids
	 * @return ： 返回操作是否成功的信息
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	public @ResponseBody String delete(@RequestBody String ids) throws Exception{
		String[] strArr = ids.split(",");
		for (String groupId : strArr) {
			groupService.delete(groupId);
		}
		return "success";
	}
}
