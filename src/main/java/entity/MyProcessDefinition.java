package entity;

import org.activiti.engine.FormService;
import org.activiti.engine.RepositoryService;

public class MyProcessDefinition {
	/** unique identifier */
	private String id;

	/**
	 * category name which is derived from the targetNamespace attribute in the
	 * definitions element
	 */
	private String category;

	/** label used for display purposes */
	private String name;

	/** unique name for all versions this process definitions */
	private String key;

	/** description of this process **/
	private String description;

	/** version of this process definition */
	private Integer version;

	/**
	 * name of {@link RepositoryService#getResourceAsStream(String, String) the
	 * resource} of this process definition.
	 */
	private String resourceName;

	/** The deployment in which this process definition is contained. */
	private String deploymentId;

	/** The resource name in the deployment of the diagram image (if any). */
	private String diagramResourceName;

	/**
	 * Does this process definition has a
	 * {@link FormService#getStartFormData(String) start form key}.
	 */
	private Boolean hasStartFormKey;

	/**
	 * Does this process definition has a graphical notation defined (such that a
	 * diagram can be generated)?
	 */
	private Boolean hasGraphicalNotation;

	/** Returns true if the process definition is in suspended state. */
	private Boolean isSuspended;

	/** The tenant identifier of this process definition */
	private String tenantId;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getResourceName() {
		return resourceName;
	}

	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}

	public String getDeploymentId() {
		return deploymentId;
	}

	public void setDeploymentId(String deploymentId) {
		this.deploymentId = deploymentId;
	}

	public String getDiagramResourceName() {
		return diagramResourceName;
	}

	public void setDiagramResourceName(String diagramResourceName) {
		this.diagramResourceName = diagramResourceName;
	}

	public Boolean getHasStartFormKey() {
		return hasStartFormKey;
	}

	public void setHasStartFormKey(Boolean hasStartFormKey) {
		this.hasStartFormKey = hasStartFormKey;
	}

	public Boolean getHasGraphicalNotation() {
		return hasGraphicalNotation;
	}

	public void setHasGraphicalNotation(Boolean hasGraphicalNotation) {
		this.hasGraphicalNotation = hasGraphicalNotation;
	}

	public Boolean getIsSuspended() {
		return isSuspended;
	}

	public void setIsSuspended(Boolean isSuspended) {
		this.isSuspended = isSuspended;
	}

	public String getTenantId() {
		return tenantId;
	}

	public void setTenantId(String tenantId) {
		this.tenantId = tenantId;
	}

	public MyProcessDefinition() {
		super();
	}

	public MyProcessDefinition(String id, String category, String name, String key, String description, Integer version,
			String resourceName, String deploymentId, String diagramResourceName, Boolean hasStartFormKey,
			Boolean hasGraphicalNotation, Boolean isSuspended, String tenantId) {
		super();
		this.id = id;
		this.category = category;
		this.name = name;
		this.key = key;
		this.description = description;
		this.version = version;
		this.resourceName = resourceName;
		this.deploymentId = deploymentId;
		this.diagramResourceName = diagramResourceName;
		this.hasStartFormKey = hasStartFormKey;
		this.hasGraphicalNotation = hasGraphicalNotation;
		this.isSuspended = isSuspended;
		this.tenantId = tenantId;
	}
}
