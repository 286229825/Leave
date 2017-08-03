<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>流程部署管理</title>
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
	function openDeployAddDialog(){
		$("#dlg").dialog("open");
	}
	
	function deleteDeploy(){
		var selections=$("#dg").datagrid("getSelections");
		if (selections.length==0) {
			$.messager.alert("系统提示","请选择要删除的数据！");
			return;
		}
		var strIds=[];
		for (var i = 0; i < selections.length; i++) {
			strIds.push(selections[i].deploymentId);
		}
		var ids=strIds.join();
		$.messager.confirm("系统提示","您确定要删除这<font color='red'>"+selections.length+"</font>条数据吗？",function(r){
			if (r) {
				$.ajax({
					url:'${pageContext.request.contextPath}/deploy/delete.do',
					data:ids,
					type:'post',
					contentType:'application/json;charset=utf-8',
					success:function(result){
						if (result=="success") {
							$.messager.alert("系统提示","数据删除成功！");
							$("#dg").datagrid("reload");
						}else{
							$.messager.alert("系统提示","数据删除失败，请联系系统管理员！");
						}
					}
				})
			}
		})
	}
	
	function searchDeploy(){
		$("#dg").datagrid("load",{
			"searchName":$("#searchName").val()
		});
	}
	
	function saveDeploy(){
		$("#fm").form("submit",{
			url:'${pageContext.request.contextPath}/deploy/deploy.do',
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				if (result=="success") {
					$.messager.alert("系统提示","部署成功!");
					closeDeployDialog();
					$("#dg").datagrid("reload");
				}else{
					$.messager.alert("系统提示","部署失败，请联系系统管理员！");
					return;
				}
			}
		})
	}
	
	function closeDeployDialog(){
		$("#dlg").dialog("close");
	}
	
	$(function(){
		$("#dg").datagrid({
			url:'${pageContext.request.contextPath }/deploy/getDeployList.do',
			fitColumns:true,
			pagination:true,
			rownumbers:true,
			fit:true,
			toolbar:'#tb',
			columns:[[
				{align:'center',field:'c',checkbox:true},
				{align:'center',field:'deploymentId',width:50,title:'编号'},
				{align:'center',field:'deploymentName',width:50,title:'流程名称'},
				{align:'center',field:'deploymentTime',width:50,title:'部署时间',
					formatter:function(value){
						var date=new Date(value);
						var y=date.getFullYear();
						var m=date.getMonth()+1;
						var d=date.getDate();
						return y+"-"+m+"-"+d;
					}
				},
			]]
		})
	})
</script>
</head>
<body style="margin:1px">
	<table id="dg"></table>
	
	<div id="tb">
		<div>
			<a href="javascript:openDeployAddDialog()" class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-add'">添加</a>
			<a href="javascript:deleteDeploy()" class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-remove'">删除</a>
		</div>
		<div>
			&nbsp;流程名称：&nbsp;<input id="searchName" name="deployName" type="text" size="20"
				onkeydown="if(event.keyCode==13) searchDeploy()">
			<a href="javascript:searchDeploy()" class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-search'">搜索</a>
		</div>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:300px;height:150px;padding:10px" 
		data-options="closed:true,buttons:'#dlg-bts',title:'添加流程部署'">
		<form id="fm" method="post" enctype="multipart/form-data">
			<input type="file" name="deployFile" class="easyui-validatebox" data-options="required:true">
		</form>
	</div>
	
	<div id="dlg-bts">
		<a href="javascript:saveDeploy()" class="easyui-linkbutton" 
			data-options="iconCls:'icon-upload'">上传</a>
		<a href="javascript:closeDeployDialog()" class="easyui-linkbutton" 
			data-options="iconCls:'icon-cancel'">关闭</a>
	</div>
</body>
</html>