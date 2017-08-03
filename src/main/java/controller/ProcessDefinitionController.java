package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.MyProcessDefinition;

@Controller
@RequestMapping("/processDefinition")
public class ProcessDefinitionController {
	
	@Resource
	private RepositoryService repositoryService;
	
	@RequestMapping("/getList")
	public @ResponseBody Map<String, Object> getList(String page,String rows,String searchName)throws Exception{
		if (searchName==null) {
			searchName="";
		}
		int start=Integer.parseInt(page)-1;
		int size=Integer.parseInt(rows);
		//这个list集合中的ProcessDefinition是activiti的一个接口，不能被序列化，不能转为json数据，因此需要自定义一个类来代替这个接口
		List<ProcessDefinition> list = repositoryService.createProcessDefinitionQuery() //创建流程定义查询
								.orderByProcessDefinitionKey().desc() //根据流程定义的 key 来降序排序
								.processDefinitionNameLike("%"+searchName+"%") //根据流程定义的 name 来模糊查询
								.listPage(start*size, size); //获取查询结果的 list
		List<MyProcessDefinition> list2=new ArrayList<MyProcessDefinition>(); //定义一个自定义类的list集合来代替ProcessDefinition接口的集合
		for (ProcessDefinition processDefinition : list) {
			MyProcessDefinition myProcessDefinition=
			new MyProcessDefinition(processDefinition.getId(), processDefinition.getCategory(), processDefinition.getName(), processDefinition.getKey(), processDefinition.getDescription(), processDefinition.getVersion(), processDefinition.getResourceName(), processDefinition.getDeploymentId(), processDefinition.getDiagramResourceName(), processDefinition.hasStartFormKey(), processDefinition.hasGraphicalNotation(), processDefinition.isSuspended(), processDefinition.getTenantId());
			list2.add(myProcessDefinition);
		}
		long total=repositoryService.createProcessDefinitionQuery().processDefinitionNameLike("%"+searchName+"%").count();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("total", total);
		map.put("rows", list2);
		return map;
	}
	
	/** 查看当前流程定义的流程图并在前端页面中显示
	 * @param deploymentId
	 * @param diagramResourceName
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/showView")
	public void showView(String deploymentId,String diagramResourceName,HttpServletResponse response) throws Exception {
		BufferedInputStream bis=new BufferedInputStream(repositoryService.getResourceAsStream(deploymentId, diagramResourceName)); //获取流程定义的图片输入流
		BufferedOutputStream bos=new BufferedOutputStream(response.getOutputStream()); //获取页面响应的输出流
		int len;
		while((len=bis.read())!=-1) {
			bos.write(len); //将获取到的输入流输出到前端页面中进行显示
		}
		bis.close(); //关闭输入流
		bos.close(); //关闭输出流
	}
}
