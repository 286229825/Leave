package controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.LoginVO;
import entity.MemershipVO;
import entity.User;
import service.MembershipService;
import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private MembershipService membershipService;
	
	@Resource
	private UserService userService;
	
	/** 用户登录
	 * @return 返回是否操作成功的信息
	 * @throws Exception
	 */
	@RequestMapping("/login")
	public @ResponseBody String login(LoginVO loginvo,HttpSession session) throws Exception{
		MemershipVO membershipvo = membershipService.login(loginvo);
		if (membershipvo != null) {
			session.setAttribute("membershipvo", membershipvo);
			return "success";
		}else {
			return "error";
		}
	}
	
	/** 退出登录
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		session.removeAttribute("membershipvo");
		return "redirect:/login.jsp";
	}
	
	/** 添加用户或修改用户
	 * @param user ：客户端请求参数 User 对象，用于添加的用户数据
	 * @param flag ：客户端请求参数 int 类型数据，用于判断添加操作还是删除操作
	 * @return 返回是否操作成功的信息
	 * @throws Exception
	 */
	@RequestMapping("/addOrUpdate")
	public @ResponseBody String addOrUpdate(User user,Integer flag) throws Exception{
		int totalResult=0;	//操作的记录数
		if (flag==1) {
			totalResult = userService.add(user);
		}else {
			totalResult = userService.update(user);
		}
		if (totalResult>0) {
			return "success";
		}else {
			return "error";
		}
	}
	
	/** 根据条件查询 User 的集合
	 * @param page 分页的当前页码
	 * @param rows 每页显示的行数
	 * @param userId 搜索时用到的查询条件
	 * @return 返回查询到的 User 集合
	 * @throws Exception
	 */
	@RequestMapping("/getUserList")
	public @ResponseBody Map<String, Object> getUserList(String page,String rows,String userId) throws Exception{
		int total = userService.getTotalNumber();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("userId", userId);
		int start=Integer.parseInt(page);
		int row=Integer.parseInt(rows);
		if (page != null && rows != null) {
			map.put("start", (start-1)*row);
			map.put("rows", row);
		}
		List<User> list2 = userService.getUsersByCondition(map);
		Map<String, Object> map2=new HashMap<String, Object>();
		map2.put("total", total);
		map2.put("rows", list2);
		return map2;
	}
	
	/** 检查用户名是否已经存在
	 * @param userId 查询的条件 userId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/checkUser")
	public @ResponseBody String checkUser(@RequestBody String userId) throws Exception{
		User user = userService.findById(userId);
		if (user == null) {
			return "success";
		}
		return "error";
	}
	
	/** 根据 id 来删除用户
	 * @param userId ：需要传入一个 userId 来作为删除的依据
	 */
	@RequestMapping("/delete")
	public @ResponseBody String delete(@RequestBody String ids) throws Exception{
		String[] strArr = ids.split(",");
		for (String userId : strArr) {
			userService.delete(userId);
		}
		return "success";
	}
	
	@RequestMapping("/modifyPassword")
	public @ResponseBody String modifyPassword(User user) throws Exception{
		int result=userService.modifyPassword(user);
		if (result>0) {
			return "success";
		}else {
			return "error";
		}
	}
}
