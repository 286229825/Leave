package entity;

import java.util.Date;

import org.activiti.engine.TaskService;

public class MyComment {
	/** unique identifier for this comment */
	private String id;

	/** reference to the user that made the comment */
	private String userId;

	/** time and date when the user made the comment */
	private Date time;

	/** reference to the task on which this comment was made */
	private String taskId;

	/** reference to the process instance on which this comment was made */
	private String processInstanceId;

	/** reference to the type given to the comment */
	private String type;

	/**
	 * the full comment message the user had related to the task and/or process
	 * instance
	 * 
	 * @see TaskService#getTaskComments(String)
	 */
	private String fullMessage;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public String getProcessInstanceId() {
		return processInstanceId;
	}

	public void setProcessInstanceId(String processInstanceId) {
		this.processInstanceId = processInstanceId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFullMessage() {
		return fullMessage;
	}

	public void setFullMessage(String fullMessage) {
		this.fullMessage = fullMessage;
	}

	public MyComment() {
		super();
	}

	public MyComment(String id, String userId, Date time, String taskId, String processInstanceId, String type,
			String fullMessage) {
		super();
		this.id = id;
		this.userId = userId;
		this.time = time;
		this.taskId = taskId;
		this.processInstanceId = processInstanceId;
		this.type = type;
		this.fullMessage = fullMessage;
	}
	
}
