package entity;

import java.util.Date;

public class MyTask {

	private String id;
	private String name;
	private Date createTime;
	private Date endTime;
	
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public MyTask() {
		super();
	}
	public MyTask(String id, String name, Date createTime, Date endTime) {
		super();
		this.id = id;
		this.name = name;
		this.createTime = createTime;
		this.endTime = endTime;
	}
}
