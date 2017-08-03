package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import entity.Leave;
import entity.MemershipVO;
import entity.MyComment;
import entity.MyTask;
import service.LeaveService;

@Controller
@RequestMapping("/task")
public class TaskController {
	
	@Resource
	private TaskService taskService;
	
	@Resource
	private RepositoryService repositoryService;
	
	@Resource
	private RuntimeService runtimeService;
	
	@Resource
	private FormService formService;
	
	@Resource
	private HistoryService historyService;
	
	@Resource
	private LeaveService leaveService;
	
	@RequestMapping("/getTaskList")
	public @ResponseBody Map<String, Object> getTaskList(String userId,String page,String rows,String searchName) throws Exception{
		if (searchName == null) {
			searchName="";
		}
		int firstResult=Integer.parseInt(page)-1;
		int maxResults=Integer.parseInt(rows);
		List<Task> list = taskService.createTaskQuery() //创建任务查询
				.taskCandidateUser(userId) //根据userId查询
				.taskNameLike("%"+searchName+"%") //根据任务名称模糊查询
				.listPage(firstResult*maxResults, maxResults); //返回带分页的结果集合
		List<MyTask> list2=new ArrayList<MyTask>();
		for (Task task : list) {
			list2.add(new MyTask(task.getId(), task.getName(), task.getCreateTime(),null));
		}
		long total = taskService.createTaskQuery().taskCandidateUser(userId).taskNameLike("%"+searchName+"%").count(); //获取总的记录数
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("total", total);
		map.put("rows", list2);
		return map;
	}
	
	@RequestMapping("/showCurrentView")
	public ModelAndView showCurrentView(String taskId) throws Exception{
		ModelAndView modelAndView=new ModelAndView();
		Task task=taskService.createTaskQuery() //创建任务查询
					.taskId(taskId) //根据任务ID来查询
					.singleResult(); //获取查询到的一个任务
		String processDefinitionId = task.getProcessDefinitionId(); //获取当前任务对应的流程定义ID
		ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery() //创建流程定义查询
					.processDefinitionId(processDefinitionId) //根据流程定义ID来查询
					.singleResult(); //获取查询到的一个流程定义
		modelAndView.addObject("deploymentId", processDefinition.getDeploymentId()); //向前端页面设置流程部署ID
		modelAndView.addObject("diagramResourceName", processDefinition.getDiagramResourceName()); //向前端页面设置流程图资源的名称
		
		//根据流程定义ID获取流程定义的实体类
		ProcessDefinitionEntity processDefinitionEntity=(ProcessDefinitionEntity) repositoryService.getProcessDefinition(processDefinitionId);
		//获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		//根据流程实例ID查看活动实例
		ProcessInstance processInstance = runtimeService.createProcessInstanceQuery() //创建流程实例查询
					.processInstanceId(processInstanceId) //根据流程实例ID来查询
					.singleResult(); //获取查询到的一个结果
		//根据活动ID查询活动实例
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(processInstance.getActivityId());
		//向前端页面设置当前活动实例的坐标范围
		modelAndView.addObject("x", activityImpl.getX());
		modelAndView.addObject("y", activityImpl.getY());
		modelAndView.addObject("width", activityImpl.getWidth());
		modelAndView.addObject("height", activityImpl.getHeight());
		modelAndView.setViewName("/currentView");
		return modelAndView;
	}
	
	@RequestMapping("/redirectPage")
	public @ResponseBody String redirectPage(@RequestBody MyTask myTask) throws Exception{
		Task task = taskService.createTaskQuery() //创建任务
				.taskId(myTask.getId()) //根据任务ID来查询
				.singleResult(); //获取查询到的一条任务
		return "yz_sp";
	}
	
	@RequestMapping("/listHistoryComment")
	public @ResponseBody List<MyComment> listHistoryComment(String processInstanceId) throws Exception{
		if (processInstanceId == null) {
			return null;
		}
		//根据流程实例ID获取所有历史批注
		List<Comment> processInstanceComments = taskService.getProcessInstanceComments(processInstanceId);
		//由于activiti自带的Comment对象是一个接口，不能与json交互，因此需要自定义一个MyComment对象来代替这个Comment对象
		List<MyComment> list=new ArrayList<MyComment>();
		for (int i = processInstanceComments.size()-1; i >=0; i--) {
			Comment comment=processInstanceComments.get(i);
			list.add(new MyComment(comment.getId(), comment.getUserId(), comment.getTime(), comment.getTaskId(), comment.getProcessInstanceId(), comment.getType(), comment.getFullMessage()));
		}
		return list;
	}
	
	@RequestMapping("/listHistoryCommentByTaskId")
	public @ResponseBody Map<String, Object> listHistoryCommentByTaskId(String taskId) throws Exception{
		if (taskId == null) {
			return null;
		}
		HistoricTaskInstance historyTaskInstance = historyService.createHistoricTaskInstanceQuery() //创建历史任务查询
				.taskId(taskId) //根据任务ID查询历史任务
				.singleResult(); //获取查询到的一条记录
		String processInstanceId = historyTaskInstance.getProcessInstanceId(); //获取流程实例ID
		//根据流程实例ID获取所有历史批注
		List<Comment> processInstanceComments = taskService.getProcessInstanceComments(processInstanceId);
		//由于activiti自带的Comment对象是一个接口，不能与json交互，因此需要自定义一个MyComment对象来代替这个Comment对象
		List<MyComment> list=new ArrayList<MyComment>();
		for (int i = processInstanceComments.size()-1; i >=0; i--) {
			Comment comment=processInstanceComments.get(i);
			list.add(new MyComment(comment.getId(), comment.getUserId(), comment.getTime(), comment.getTaskId(), comment.getProcessInstanceId(), comment.getType(), comment.getFullMessage()));
		}
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("rows", list);
		return map;
	}
	
	@RequestMapping("/yz_sp")
	public @ResponseBody String yz_sp(String comment,String taskId,String state,HttpSession session) throws Exception{
		Task task = taskService.createTaskQuery() //创建任务查询
				.taskId(taskId) //根据任务ID来查询
				.singleResult(); //获取查询到的一条记录
		String processInstanceId = task.getProcessInstanceId(); //获取流程实例ID
		Integer leaveId=(Integer) taskService.getVariable(taskId, "leaveId"); //获取流程变量leaveId的值
		Leave leave = leaveService.findById(leaveId); //根据leaveId获取请假单
		if (state.equals("1")) {
			leave.setState("审核通过"); //设置请假单的状态
		}else {
			leave.setState("审核未通过"); //设置请假单的状态
		}
		leaveService.update(leave); //更新请假单
		// comment中的userId
		MemershipVO currentMemberShip=(MemershipVO) session.getAttribute("membershipvo");
		Authentication.setAuthenticatedUserId(currentMemberShip.getFirst_()+currentMemberShip.getLast_()+"【"+currentMemberShip.getGroup_id_()+"】");
		taskService.addComment(taskId, processInstanceId, comment); //添加批注
		taskService.complete(taskId); //完成任务
		return "success";
	}
	
	@RequestMapping("/getFinishedTaskList")
	public @ResponseBody Map<String, Object> getFinishedTaskList(String searchName,String groupId,Integer page,Integer rows) throws Exception{
		if (searchName == null) {
			searchName="";
		}
		List<HistoricTaskInstance> list = historyService.createHistoricTaskInstanceQuery() //创建历史任务实例查询
				.taskCandidateGroup(groupId) //根据用户组查询
				.taskNameLike("%"+searchName+"%") //根据任务名称模糊查询
				.listPage((page-1)*rows, rows); //获取分页查询结果
		//获取所有记录总数
		long count = historyService.createHistoricTaskInstanceQuery().taskCandidateGroup(groupId).taskNameLike("%"+searchName+"%").count();
		List<MyTask> list2=new ArrayList<MyTask>();
		for (HistoricTaskInstance historicTaskInstance : list) {
			//如果该任务对应的流程实例在运行时任务表里已经不存在了，说明该任务已经结束
			if (taskService.createTaskQuery().processInstanceId(historicTaskInstance.getProcessInstanceId()).singleResult() == null) {
				list2.add(new MyTask(historicTaskInstance.getId(), historicTaskInstance.getName(), historicTaskInstance.getCreateTime(), historicTaskInstance.getEndTime()));
			}
		}
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("total", count);
		map.put("rows", list2);
		return map;
	}
}
