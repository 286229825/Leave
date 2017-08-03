package controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Leave;
import service.LeaveService;

@Controller
@RequestMapping("/leave")
public class LeaveController {
	
	@Resource
	private LeaveService leaveService;
	
	@Resource
	private RuntimeService runtimeService;
	
	@Resource
	private TaskService taskService;

	/** 添加请假单
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/save")
	public @ResponseBody String save(Leave leave) throws Exception{
		leave.setLeavedate(new Date());
		int result = leaveService.add(leave);
		if (result>0) {
			return "success";
		}else {
			return "error";
		}
	}
	
	@RequestMapping("/startApply")
	public @ResponseBody String startApply(@RequestBody Leave leave) throws Exception{
		Map<String, Object> variables=new HashMap<String, Object>();
		Leave leave2 = leaveService.findById(leave.getId());
		variables.put("leaveId", leave.getId());
		variables.put("days", leave2.getDays());
		//启动流程，并且在启动流程的时候就设置流程变量
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("myProcess", variables);
		String processInstanceId = processInstance.getProcessInstanceId();
		Task task = taskService.createTaskQuery() //创建任务查询
				.processInstanceId(processInstanceId) //根据流程实例ID来查询任务
				.singleResult(); //获取查询到的一个任务
		taskService.complete(task.getId());
		leave2.setProcessinstanceid(processInstanceId);
		leave2.setState("审核中");
		leaveService.update(leave2);
		return "success";
	}
	
	@RequestMapping("/getLeaveList")
	public @ResponseBody Map<String, Object> getLeaveList(Integer page,Integer rows,String userId) throws Exception{
		Map<String, Object> queryMap=new HashMap<String, Object>();
		queryMap.put("start", (page-1)*rows);
		queryMap.put("size", rows);
		queryMap.put("userId", userId);
		List<Leave> list = leaveService.getListByLimit(queryMap);
		int total = leaveService.getTotalNumber(userId);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("total", total);
		map.put("rows", list);
		return map;
	}
	
	@RequestMapping("/getLeaveByTaskId")
	public @ResponseBody Leave getLeaveByTaskId(String taskId)throws Exception{
		Task task=taskService.createTaskQuery() //创建任务查询
					.taskId(taskId) //根据任务ID来查询
					.singleResult(); //获取查询到的一条记录
		String processInstanceId = task.getProcessInstanceId();
		return leaveService.getByProcessInstanceId(processInstanceId);
	}
}
