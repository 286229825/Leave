package entity;

import java.util.Date;

public class MyDeployment {

	private String deploymentId;
  	private String deploymentName;
  	private Date deploymentTime;
  	private String deploymentCategory;
  	private String deploymentTenantId;
  	
	public Date getDeploymentTime() {
		return deploymentTime;
	}
	public void setDeploymentTime(Date deploymentTime) {
		this.deploymentTime = deploymentTime;
	}
	public String getDeploymentId() {
		return deploymentId;
	}
	public void setDeploymentId(String deploymentId) {
		this.deploymentId = deploymentId;
	}
	public String getDeploymentName() {
		return deploymentName;
	}
	public void setDeploymentName(String deploymentName) {
		this.deploymentName = deploymentName;
	}
	public String getDeploymentCategory() {
		return deploymentCategory;
	}
	public void setDeploymentCategory(String deploymentCategory) {
		this.deploymentCategory = deploymentCategory;
	}
	public String getDeploymentTenantId() {
		return deploymentTenantId;
	}
	public void setDeploymentTenantId(String deploymentTenantId) {
		this.deploymentTenantId = deploymentTenantId;
	}
	
	public MyDeployment(String deploymentId, String deploymentName, Date deploymentTime, String deploymentCategory,
			String deploymentTenantId) {
		super();
		this.deploymentId = deploymentId;
		this.deploymentName = deploymentName;
		this.deploymentTime = deploymentTime;
		this.deploymentCategory = deploymentCategory;
		this.deploymentTenantId = deploymentTenantId;
	}
	public MyDeployment() {
		super();
	}
}
