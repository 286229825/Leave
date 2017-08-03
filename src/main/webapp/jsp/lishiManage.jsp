<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>代办任务管理</title>
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
	function searchTask(){
		 $("#dg").datagrid('load',{
			"searchName":$("#searchName").val()
		 });
	}
	
	function openListCommentDialog(taskId){
		$('#dg2').datagrid('load',{
			taskId:taskId
		});
		$("#dlg").dialog("open").dialog("setTitle","查看历史批注");
	}
	
	function openListActionDialog(taskId){
		$('#dg3').datagrid('load',{
			taskId:taskId
		});
		$("#dlg2").dialog("open").dialog("setTitle","流程执行过程");
	}
	
	
	function formatAction(val,row){
		return "<a  href='javascript:openListActionDialog("+row.id+")' >流程执行过程</a>&nbsp;&nbsp;"+"<a  href='javascript:openListCommentDialog("+row.id+")' >历史批注</a>&nbsp;&nbsp;";
	}
	
	function formatDate(value){
		var date=new Date(value);
		var y=date.getFullYear();
		var m=date.getMonth()+1;
		var d=date.getDate();
		return y+"-"+m+"-"+d;
	}
</script>
</head>
<body style="margin: 1px">
	<table id="dg" title="历史任务管理" class="easyui-datagrid" 
		data-options="fit:true,fitColumns:true,pagination:true,rownumbers:true,toolbar:'#tb',
			url:'${pageContext.request.contextPath }/task/getFinishedTaskList.do?groupId=${sessionScope.membershipvo.group_id_}'">
		<thead>
			<tr>
				<th data-options="checkbox:true,field:'c',align:'center'"></th>
				<th data-options="width:80,field:'id',align:'center'">任务ID</th>
				<th data-options="width:150,field:'name',align:'center'">任务名称</th>
				<th data-options="width:100,field:'createTime',align:'center',formatter:formatDate">创建时间</th>
				<th data-options="width:100,field:'endTime',align:'center',formatter:formatDate">结束时间</th>
				<th data-options="width:150,field:'cz',align:'center',formatter:formatAction">操作</th>
			</tr>
		</thead>
	</table>
	
	<div id="tb">
		&nbsp;任务名称：<input id="searchName" type="text" size="20" onkeydown="if(event.keyCode==13) searchTask()">
		<a href="javascript:searchTask()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">搜索</a>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:750px;height:250px;padding: 10px 20px"
   closed="true" >
   
	    <table id="dg2" title="批注列表" class="easyui-datagrid"
	   data-options="fitColumns:true,fit:true" url="${pageContext.request.contextPath}/task/listHistoryCommentByTaskId.do" style="width: 700px;height: 200px;">
		   <thead>
		   	<tr>
		   		<th field="time" width="120" align="center">批注时间</th>
		   		<th field="userId" width="100" align="center">批注人</th>
		   		<th field="fullMessage" width="200" align="center">批注信息</th>
		   	</tr>
		   </thead>
		 </table>
	   
	 </div>
 
 
	 <div id="dlg2" class="easyui-dialog" style="width:750px;height:350px;padding: 10px 20px"
	   closed="true" >
	   
	    <table id="dg3" title="流程执行过程列表" class="easyui-datagrid"
	   data-options="fitColumns:true,fit:true" url="${pageContext.request.contextPath}/processInstance/listAction.do" style="width: 700px;height: 250px;">
		   <thead>
		   	<tr>
		   		<th field="activityId" width="100" align="center">任务节点ID</th>
		   		<th field="activityName" width="150" align="center">任务节点名称</th>
		   		<th field="startTime" width="100" align="center">开始时间</th>
		   		<th field="endTime" width="100" align="center">结束时间</th>
		   	</tr>
		   </thead>
		 </table>
	 </div>
</body>
</html>