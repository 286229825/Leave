<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>流程定义管理</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/jquery-easyui-1.5.1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/jquery-easyui-1.5.1/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	function searchProcessDefinition(){
		$("#dg").datagrid("load",{
			"searchName":$("#searchName").val()
		})
	}
	
	function formatAction(value,row){
		return "<a target='_blank'"+
		"href='${pageContext.request.contextPath}/processDefinition/showView.do?deploymentId="+row.deploymentId+"&diagramResourceName="+row.diagramResourceName+"'>"+
		"查看流程图</a>";
	}
</script>
</head>
<body style="margin:1px">
	<table id="dg" title="流程定义管理" class="easyui-datagrid"
		data-options="fit:true,pagination:true,rownumbers:true,fitColumns:true,toolbar:'#tb',
		url:'${pageContext.request.contextPath }/processDefinition/getList.do'">
		<thead>
			<tr>
				<th data-options="field:'id',width:60,align:'center'">编号</th>
				<th data-options="field:'name',width:50,align:'center'">流程名称</th>
				<th data-options="field:'key',width:50,align:'center'">流程定义的 KEY</th>
				<th data-options="field:'version',width:20,align:'center'">版本</th>
				<th data-options="field:'resourceName',width:70,align:'center'">流程定义的规则文件名称</th>
				<th data-options="field:'diagramResourceName',width:70,align:'center'">流程定义的规则图片名称</th>
				<th data-options="field:'deploymentId',width:40,align:'center'">流程部署 ID</th>
				<th data-options="field:'cz',width:30,align:'center',formatter:formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb">
		<div>
			&nbsp;流程定义名称：&nbsp;<input id="searchName" type="text" size="20"
										onkeydown="if(event.keyCode==13) searchProcessDefinition()">
			<a href="javascript:searchProcessDefinition()" class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-search'"></a>
		</div>
	</div>
</body>
</html>