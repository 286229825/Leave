package service;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.LoginVO;
import entity.Memership;
import entity.MemershipVO;
import mapper.MembershipMapper;

@Service
public class MembershipService {
	
	@Resource
	private MembershipMapper membershipMapper;
	
	/** 用户登录校验。通过校验信息，返回查询到的一条记录
	 * @param map ：需要传入一个 Map 集合作为查询条件，其中要包括 userId，password，groupId 三个键
	 * @return 返回一个 Memership 对象
	 */
	public MemershipVO login(LoginVO loginvo){
		return membershipMapper.login(loginvo);
	}
	
	/** 根据条件分页查询 MembershipVO 的记录
	 * @param map
	 * @return
	 */
	public List<MemershipVO> getMembershipVOsByCondition(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return membershipMapper.getMembershipVOsByCondition(map);
	}

	/** 根据 user_id 来查询 Memership
	 * @param user_id_
	 * @return 返回 Memership 对象
	 */
	public Memership getMembershipById(String user_id_) {
		// TODO Auto-generated method stub
		return membershipMapper.getMembershipById(user_id_);
	}
 
	/** 添加一个 memership
	 * @param memership
	 * @return 返回操作成功的记录数
	 */
	@Transactional
	public int addMembership(Memership memership) {
		// TODO Auto-generated method stub
		return membershipMapper.addMembership(memership);
	}

	/** 修改一个 memership
	 * @param memership
	 * @return 返回操作成功的记录数
	 */
	@Transactional
	public int updateMembership(Memership memership) {
		// TODO Auto-generated method stub
		return membershipMapper.updateMembership(memership);
	}
}
