package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Memership;
import entity.MemershipVO;
import entity.User;
import service.MembershipService;
import service.UserService;

@Controller
@RequestMapping("/membership")
public class MembershipController {
	
	@Resource
	private UserService userService;
	
	@Resource
	private MembershipService membershipService;
	
	@RequestMapping("/getMembershipList")
	public @ResponseBody Map<String, Object> getMembershipList(Integer page,Integer rows,String userId) throws Exception{
		int total = userService.getTotalNumber();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("userId", userId);
		if (page != null && rows != null) {
			map.put("start", (page-1)*rows);
			map.put("rows", rows);
		}
		List<MemershipVO> list2 = membershipService.getMembershipVOsByCondition(map);
		List<User> userList = userService.getUsersByCondition(map);
		for (User user : userList) {
			boolean flag=true;
			for (MemershipVO memershipVO : list2) {
				if (memershipVO.getUser_id_().equals(user.getId_())) {
					flag=false;
					break;
				}
			}
			if (flag) {
				MemershipVO memershipVO=new MemershipVO();
				memershipVO.setUser_id_(user.getId_());
				memershipVO.setEmail_(user.getEmail_());
				memershipVO.setFirst_(user.getFirst_());
				memershipVO.setLast_(user.getLast_());
				memershipVO.setPwd_(user.getPwd_());
				list2.add(memershipVO);
			}
		}
		Map<String, Object> map2=new HashMap<String, Object>();
		map2.put("total", total);
		map2.put("rows", list2);
		return map2;
	}
	
	@RequestMapping("/setMembership")
	public @ResponseBody String setMembership(Memership memership) throws Exception{
		int result=0;
		Memership memership2 = membershipService.getMembershipById(memership.getUser_id_());
		if (memership2!=null) {
			result = membershipService.updateMembership(memership);
		}else {
			result = membershipService.addMembership(memership);
		}
		if (result>0) {
			return "success";
		}else {
			return "error";
		}
	}
}
