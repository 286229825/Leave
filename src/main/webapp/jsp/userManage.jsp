<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
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
	function searchUser(){
		$("#tb").datagrid("load",{
			"userId":$("#searchId").val()
		})
	}
	
	function openUserAddDialog(){
		$("#dlg").dialog("open").dialog("setTitle","添加用户信息");
		$("#flag").val(1);
		$("#userId").attr("readonly",false);
	}
	
	function openUserModifyDialog(){
		var selectedRow=$("#tb").datagrid("getSelected");
		if (selectedRow == null) {
			$.messager.alert("系统提示","请选择一条要修改的数据！");
			return;
		}
		$("#dlg").dialog("open").dialog("setTitle","修改用户信息");
		$("#fm").form("load",selectedRow);
		$("#flag").val(2);
		$("#userId").attr("readonly",true);
	}
	
	function resetValue(){
		$("#userId").val("");
		$("#password").val("");
		$("#firstName").val("");
		$("#lastName").val("");
		$("#email").val("");
	}
	
	function saveOrUpdateUser(){
		$("#fm").form("submit",{
			url:"${pageContext.request.contextPath}/user/addOrUpdate.do",
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
			var userId=$("#userId");
			$.ajax({
				url:'${pageContext.request.contextPath}/user/checkUser.do',
				data:userId,
				type:'post',
				contentType:'application/json;charset=utf-8',
				success:function(result){
					if (result=="success") {
						saveOrUpdateUser();
					}else{
						$.messager.alert("系统提示","该用户名已经存在，请更换！");
						$("#userId").focus();
					}
				}
			})
		
		}else{
			saveOrUpdateUser();
		}
	}
	
	function closeUserDialog(){
		resetValue();
		$("#dlg").dialog("close");
	}
	
	function deleteUser(){
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
					url:'${pageContext.request.contextPath}/user/delete.do',
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
	<table id="tb" class="easyui-datagrid" title="用户列表" 
		data-options="fitColumns:true,pagination:true,rownumbers:true,fit:true,
		toolbar:'#tlb',url:'${pageContext.request.contextPath }/user/getUserList.do'">
		<thead>
			<tr>
				<th data-options="field:'c',align:'center',checkbox:true"></th>
				<th data-options="field:'id_',width:80,align:'center'">用户名</th>
				<th data-options="field:'pwd_',width:80,align:'center'">密码</th>
				<th data-options="field:'first_',width:50,align:'center'">姓</th>
				<th data-options="field:'last_',width:50,align:'center'">名</th>
				<th data-options="field:'email_',width:100,align:'center'">邮箱</th>
			</tr>
		</thead>
	</table>
	<div id="tlb">
		<div>
			<a href="javascript:openUserAddDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">添加</a>
			<a href="javascript:openUserModifyDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">修改</a>
			<a href="javascript:deleteUser()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-clear'">删除</a>
		</div>
		<div>
			&nbsp;用户名：&nbsp;<input id="searchId" size="20" type="text" onkeydown="if(event.keyCode==13) searchUser()">
			<a href="javascript:searchUser()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">搜索</a>
		</div>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:600px;height:300px;padding:10px" data-options="closed:true,buttons:'#bts'">
		<form id="fm" method="post">
			<table cellpadding="10px">
				<tr>
					<td>用户名：</td>
					<td><input id="userId" name="id_" type="text" class="easyui-validatebox" data-options="required:true"></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>密码：</td>
					<td><input id="password" name="pwd_" type="password" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<td>姓：</td>
					<td><input id="firstName" name="first_" type="text" class="easyui-validatebox" data-options="required:true"></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>名：</td>
					<td><input id="lastName" name="last_" type="text" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<td>邮箱：</td>
					<td colspan="4"><input width="200px" id="email" name="email_" type="text" class="easyui-validatebox" data-options="required:true,validType:'email'">
						<input id="flag" name="flag" type="hidden">
					</td>
				</tr>
			</table>
		</form>		
	</div>
	
	<div id="bts">
		<a href="javascript:checkData()" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		<a href="javascript:closeUserDialog()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">关闭</a>
	</div>
</body>
</html>