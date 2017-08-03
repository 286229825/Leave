<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户组管理</title>
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
	
	function openGroupAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加用户组信息");
		$("#flag").val(1);
		$("#groupId").attr("readonly",false);
	}
	
	function openGroupModifyDialog(){
		var selectedRow=$("#tb").datagrid("getSelected");
		if (selectedRow == null) {
			$.messager.alert("系统提示","请选择一条要修改的数据！");
			return;
		}
		$("#dlg").dialog("open").dialog("setTitle","修改用户组信息");
		$("#fm").form("load",selectedRow);
		$("#flag").val(2);
		$("#groupId").attr("readonly",true);
	}
	
	function resetValue(){
		$("#groupId").val("");
		$("#groupName").val("");
	}
	
	function saveOrUpdateGroup(){
		$("#fm").form("submit",{
			url:"${pageContext.request.contextPath}/group/addOrUpdate.do",
			onSumit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				if(result=="success"){
					$.messager.alert("系统提示","操作成功！");
					resetValue();
					$("#dlg").dialog("close");
					$("#tb").datagrid("reload");
				}else{
					$.messager.alert("系统提示","操作失败！");
					return;
				}
			}
		})
	}
	
	function checkData(){
		var flag=$("#flag").val();
		if (flag==1) {
			var groupId=$("#groupId");
			$.ajax({
				url:'${pageContext.request.contextPath}/group/checkGroup.do',
				data:groupId,
				type:'post',
				contentType:'application/json;charset=utf-8',
				success:function(result){
					if (result=="success") {
						saveOrUpdateGroup();
					}else{
						$.messager.alert("系统提示","该用户名已经存在，请更换！");
						$("#groupId").focus();
					}
				}
			})
		
		}else{
			saveOrUpdateGroup();
		}
	}
	
	function closeGroupDialog(){
		resetValue();
		$("#dlg").dialog("close");
	}
	
	function deleteGroup(){
		var selectedRows=$("#tb").datagrid("getSelections");
		if (selectedRows.length==0) {
			$.messager.alert("系统提示","请选择要删除的数据！");
			return;
		}
		var strIds=[];
		for (var i = 0; i < selectedRows.length; i++) {
			strIds.push(selectedRows[i].id_);
		}
		var ids=strIds.join();
		$.messager.confirm("系统提示","确定要删除这"+selectedRows.length+"条数据吗？",function(r){
			if (r) {
				$.ajax({
					url:'${pageContext.request.contextPath}/group/delete.do',
					data:ids,
					contentType:'application/json;charset=utf-8',
					type:'post',
					success:function(result){
						if (result=="success") {
							$.messager.alert("系统提示","数据已经成功删除！");
							$("#tb").datagrid("reload");
						}else{
							$.messager.alert("系统提示","数据删除失败，请联系系统管理员！");
						}
					}
				})
			}
		})
	}
</script>

</head>
<body style="margin:1px">
	<table id="tb" class="easyui-datagrid" title="用户组列表" 
		data-options="fitColumns:true,pagination:true,rownumbers:true,fit:true,
		toolbar:'#tlb',url:'${pageContext.request.contextPath }/group/getGroupList.do'">
		<thead>
			<tr>
				<th data-options="field:'c',align:'center',checkbox:true"></th>
				<th data-options="field:'id_',width:80,align:'center'">组昵称</th>
				<th data-options="field:'name_',width:80,align:'center'">组名称</th>
			</tr>
		</thead>
	</table>
	<div id="tlb">
		<div>
			<a href="javascript:openGroupAddDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
			<a href="javascript:openGroupModifyDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">修改</a>
			<a href="javascript:deleteGroup()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-clear'">删除</a>
		</div>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:600px;height:300px;padding:10px" data-options="closed:true,buttons:'#bts'">
		<form id="fm" method="post">
			<table cellpadding="10px">
				<tr>
					<td>组昵称：</td>
					<td><input id="groupId" name="id_" type="text" class="easyui-validatebox" data-options="required:true"></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>组名称：</td>
					<td>
						<input id="groupName" name="name_" type="password" class="easyui-validatebox" data-options="required:true">
						<input type="hidden" id="flag" name="flag">	
					</td>
				</tr>
			</table>
		</form>		
	</div>
	
	<div id="bts">
		<a href="javascript:checkData()" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		<a href="javascript:closeGroupDialog()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">关闭</a>
	</div>
</body>
</html>