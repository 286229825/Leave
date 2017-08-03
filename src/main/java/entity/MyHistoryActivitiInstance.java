package entity;

import java.util.Date;

public class MyHistoryActivitiInstance {
	/** The unique identifier of this historic activity instance. */
	private String id;

	/** The unique identifier of the activity in the process */
	private String activityId;

	/** The display name for the activity */
	private String activityName;

	/** The XML tag of the activity as in the process file */
	private String activityType;

	/** The corresponding task in case of task activity */
	private String taskId;

	/** Time when the activity instance started */
	private Date startTime;

	/** Time when the activity instance ended */
	private Date endTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getActivityId() {
		return activityId;
	}

	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public String getActivityType() {
		return activityType;
	}

	public void setActivityType(String activityType) {
		this.activityType = activityType;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public MyHistoryActivitiInstance() {
		super();
	}

	public MyHistoryActivitiInstance(String id, String activityId, String activityName, String activityType,
			String taskId, Date startTime, Date endTime) {
		super();
		this.id = id;
		this.activityId = activityId;
		this.activityName = activityName;
		this.activityType = activityType;
		this.taskId = taskId;
		this.startTime = startTime;
		this.endTime = endTime;
	}

}
