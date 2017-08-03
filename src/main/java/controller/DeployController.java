package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipInputStream;

import javax.annotation.Resource;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import entity.MyDeployment;

@Controller
@RequestMapping("/deploy")
public class DeployController {
	
	@Resource
	private RepositoryService repositoryService;
	
	
	/** 根据条件获取流程部署分页列表
	 * @throws Exception
	 */
	@RequestMapping("/getDeployList")
	public @ResponseBody Map<String, Object> getDeployList(String page,String rows,String searchName) throws Exception{
		if (searchName == null) {
			searchName="";
		}
		int start = Integer.parseInt(page);
		int row=Integer.parseInt(rows);
		List<Deployment> list = repositoryService.createDeploymentQuery() //创建流程部署查询
				.orderByDeploymenTime().desc() //根据创建时间降序排序
				.deploymentNameLike("%"+searchName+"%") //根据流程部署名称模糊查询
				.listPage((start-1)*row, row);
		List<MyDeployment> list2=new ArrayList<MyDeployment>();
		for (Deployment deployment : list) {
			MyDeployment myDeployment=new MyDeployment(deployment.getId(), deployment.getName(), deployment.getDeploymentTime(), deployment.getCategory(), deployment.getTenantId());
			list2.add(myDeployment);
		}
		long total=repositoryService.createDeploymentQuery().deploymentNameLike("%"+searchName+"%").count();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("rows", list2);
		map.put("total", total);
		return map;
	}
	
	/** 根据 id 删除流程定义
	 * @param ids ： 这个参数是一个String类型，但是里面有很多id，形式类似于"12,23,34,34,45"
	 * @return ： 返回是否删除成功的信息
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	public @ResponseBody String delete(@RequestBody String ids) throws Exception{
		String[] idArr = ids.split(",");
		for (String strId : idArr) {
			repositoryService.deleteDeployment(strId, true); //级联删除流程定义
		}
		return "success";
	}
	
	/** 根据上传过来的流程文件来部署流程
	 * @param deployFile ： 上传过来的流程文件
	 * @return ： 返回是否部署成功的信息
	 * @throws Exception
	 */
	@RequestMapping("/deploy")
	public @ResponseBody String deploy(MultipartFile deployFile) throws Exception{
		repositoryService.createDeployment() //创建部署
			.name(deployFile.getOriginalFilename()) //设置名称
			.addZipInputStream(new ZipInputStream(deployFile.getInputStream())) //添加zip文件的输入流
			.deploy(); //部署
		return "success";
	}
}
