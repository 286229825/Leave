package entity;

import java.util.Date;

public class Leave {
	private Integer id; // 编号
	private User user; // 请假人
	private Date leavedate; // 请假日期
	private Integer days; // 请假天数
	private String leavereason; // 请假原因
	private String state; // 审核状态  未提交  审核中 审核通过 审核未通过
	private String processinstanceid; // 流程实例id
	private String id_;
	public String getId_() {
		return id_;
	}
	public void setId_(String id_) {
		this.id_ = id_;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getLeavedate() {
		return leavedate;
	}
	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}

	public String getLeavereason() {
		return leavereason;
	}
	public Integer getDays() {
		return days;
	}
	public void setDays(Integer days) {
		this.days = days;
	}
	public void setLeavereason(String leavereason) {
		this.leavereason = leavereason;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getProcessinstanceid() {
		return processinstanceid;
	}
	public void setProcessinstanceid(String processinstanceid) {
		this.processinstanceid = processinstanceid;
	}
}
