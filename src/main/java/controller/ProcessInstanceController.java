package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.activiti.engine.HistoryService;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.MyHistoryActivitiInstance;

@Controller
@RequestMapping("/processInstance")
public class ProcessInstanceController {
	
	@Resource
	private HistoryService historyService;

	@RequestMapping("/listAction")
	public @ResponseBody List<MyHistoryActivitiInstance> listAction(String taskId) throws Exception{
		if (taskId==null) {
			return null; 
		}
		HistoricTaskInstance historicTaskInstance = historyService.createHistoricTaskInstanceQuery() //创建历史任务实例查询
				.taskId(taskId) //根据任务ID来查询
				.singleResult(); //获取查询到的一条记录
		//获取当前历史任务的流程实例ID
		String processInstanceId = historicTaskInstance.getProcessInstanceId();
		//根据历史流程实例ID获取历史活动节点的集合
		List<HistoricActivityInstance> list = historyService.createHistoricActivityInstanceQuery().processInstanceId(processInstanceId).list();
		List<MyHistoryActivitiInstance> list2=new ArrayList<MyHistoryActivitiInstance>();
		for (HistoricActivityInstance historicActivityInstance : list) {
			list2.add(new MyHistoryActivitiInstance(historicActivityInstance.getId(), historicActivityInstance.getActivityId(), historicActivityInstance.getActivityName(), historicActivityInstance.getActivityType(), historicActivityInstance.getTaskId(), historicActivityInstance.getStartTime(), historicActivityInstance.getEndTime()));
		}
		return list2;
	}
}
