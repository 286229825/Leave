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
		$("#dg").datagrid("load",{
			"searchName":$("#searchName").val()
		})
	}
	
	function formatAction(value,row){
		return "<a href='javascript:openFinishTaskTab("+row.id+")'>办理任务</a>&nbsp;&nbsp;&nbsp;&nbsp;"+
		"<a target='_blank' href='${pageContext.request.contextPath}/task/showCurrentView.do?taskId="+row.id+"'>查看当前流程图</a>";
	}
	
	function openFinishTaskTab(taskId){
		$.ajax({
			url:'${pageContext.request.contextPath}/task/redirectPage.do',
			type:'post',
			data:'{"id":"'+taskId+'"}',
			contentType:'application/json;charset=utf-8',
			success:function(result){
				window.parent.openTab("办理任务",result+".jsp?taskId="+taskId,"icon-edit");
			}
		})
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
	<table id="dg" title="代办任务管理" class="easyui-datagrid" 
		data-options="fit:true,fitColumns:true,pagination:true,rownumbers:true,toolbar:'#tb',
			url:'${pageContext.request.contextPath }/task/getTaskList.do?userId=${sessionScope.membershipvo.user_id_}'">
		<thead>
			<tr>
				<th data-options="checkbox:true,field:'c',align:'center'"></th>
				<th data-options="width:80,field:'id',align:'center'">任务ID</th>
				<th data-options="width:150,field:'name',align:'center'">任务名称</th>
				<th data-options="width:100,field:'createTime',align:'center',formatter:formatDate">创建时间</th>
				<th data-options="width:150,field:'cz',align:'center',formatter:formatAction">操作</th>
			</tr>
		</thead>
	</table>
	
	<div id="tb">
		&nbsp;任务名称：<input id="searchName" type="text" size="20" onkeydown="if(event.keyCode==13) searchTask()">
		<a href="javascript:searchTask()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">搜索</a>
	</div>
</body>
</html>