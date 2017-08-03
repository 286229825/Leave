<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户权限管理</title>
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
	
	function openAuthorModifyDialog(){
		var selectedRow=$("#tb").datagrid("getSelected");
		if (selectedRow == null) {
			$.messager.alert("系统提示","请选择要操作的数据！");
			return;
		}
		$("#dlg").dialog("open").dialog("setTitle","设置用户权限");
		$("#fm").form("load",selectedRow);
	}
	
	function resetValue(){
		$("#userId").val("");
		$("#comb").val("");
	}
	
	function saveData(){
		$("#fm").form("submit",{
			url:"${pageContext.request.contextPath}/membership/setMembership.do",
			onSubmit:function(){
				var combVal=$("#comb").val()
				if (combVal == "" || combVal==null) {
					$.messager.alert("系统提示","请选择权限类型！");
					return false;
				}
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
	
	function closeAuthorDialog(){
		resetValue();
		$("#dlg").dialog("close");
	}
	
</script>

</head>
<body style="margin:1px">
	<table id="tb" class="easyui-datagrid" title="用户列表" 
		data-options="fitColumns:true,pagination:true,rownumbers:true,fit:true,
		toolbar:'#tlb',url:'${pageContext.request.contextPath }/membership/getMembershipList.do'">
		<thead>
			<tr>
				<th data-options="field:'c',align:'center',checkbox:true"></th>
				<th data-options="field:'user_id_',width:80,align:'center'">用户名</th>
				<th data-options="field:'pwd_',width:80,align:'center'">密码</th>
				<th data-options="field:'first_',width:50,align:'center'">姓</th>
				<th data-options="field:'last_',width:50,align:'center'">名</th>
				<th data-options="field:'email_',width:100,align:'center'">邮箱</th>
				<th data-options="field:'group_id_',width:100,align:'center'">角色权限</th>
			</tr>
		</thead>
	</table>
	<div id="tlb">
		<div>
			<a href="javascript:openAuthorModifyDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">设置权限</a>
		</div>
		<div>
			&nbsp;用户名：&nbsp;<input id="searchId" size="20" type="text" onkeydown="if(event.keyCode==13) searchUser()">
			<a href="javascript:searchUser()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">搜索</a>
		</div>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:600px;height:300px;padding:10px" data-options="closed:true,buttons:'#bts'">
		<form id="fm" method="post">
			<table cellpadding="8px">
				<tr>
					<td>用户名：</td>
					<td>
						<input id="userId" name="user_id_" class="easyui-textbox" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>请选择权限类型</td>
					<td><input id="comb" name="group_id_" class="easyui-combobox" 
					data-options="editable:false,textField:'id_',valueField:'id_',panelHeight:'auto',url:'${pageContext.request.contextPath }/group/getGroupList.do'">
					</td>
				</tr>
			</table>
		</form>		
	</div>
	
	<div id="bts">
		<a href="javascript:saveData()" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		<a href="javascript:closeAuthorDialog()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">关闭</a>
	</div>
</body>
</html>