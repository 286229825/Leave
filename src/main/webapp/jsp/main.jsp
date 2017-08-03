<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/pic/main_logo.ico" rel="shortcut icon">
<title>职工请假系统-主界面</title>
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
	function openTab(text,url,logo){
		if ($("#tabs").tabs("exists",text)) {
			$("#tabs").tabs("select",text);
		}else{
			var content="<iframe frameborder='0' scrolling='auto' width='100%' height='100%'"+
			"src='${pageContext.request.contextPath}/jsp/"+url+"'></iframe>";
			$("#tabs").tabs("add",{
				title:text,
				iconCls:logo,
				closable:true,
				content:content
			});
		}
	}
	
	function closeTab(index){
		$("#tabs").tabs("close",index);
		updateTab();
	}
	
	function updateTab(){
		$("#tabs").tabs("select","代办任务管理");
		var tab = $('#tabs').tabs('getSelected');  // 获取选择的面板
		var content="<iframe frameborder='0' scrolling='auto' width='100%' height='100%'"+
			"src='${pageContext.request.contextPath}/jsp/daibanManage.jsp'></iframe>";
		$('#tabs').tabs('update', {
			tab: tab,
			options: {
				content:content
			}
		});
	}
	
	function openModifyPasswordDialog(){
		$("#dlg").dialog("open");
	}
	
	function resetValue(){
		$("#oldPassword").val("");
		$("#newPassword").val("");
		$("#newPassword2").val("");
	}
	
	function modifyPassword(){
		$("#fm").form("submit",{
			url:"${pageContext.request.contextPath}/user/modifyPassword.do?",
			onSubmit:function(){
				var oldPassword=$("#oldPassword").val();
				var newPassword=$("#newPassword").val();
				var newPassword2=$("#newPassword2").val();
				if (!$(this).form("validate")) {
					return false;
				}
				if (oldPassword != "${sessionScope.membershipvo.pwd_}") {
					$.messager.alert("系统提示","用户原密码输入错误！");
					return false;
				}
				if (newPassword2 != newPassword) {
					$.messager.alert("系统提示","用户确认密码输入错误！");
					return false;
				}
				return true;
			},
			success:function(result){
				if (result=="success") {
					$.messager.alert("系统提示","密码修改成功！下一次登录生效");
					resetValue();
					$("#dlg").dialog("close");
				}else{
					$.messager.alert("系统提示","密码修改失败！");
					return;
				}
			}
		})
	}
	
	function closeModifyDialog(){
		resetValue();
		$("#dlg").dialog("close");
	}
	
	function logout(){
		$.messager.confirm("系统提示","您确定要退出系统吗？",function(r){
			if (r) {
				window.location.href="${pageContext.request.contextPath}/user/logout.do";
			}
		})
	}
	
	
</script>

</head>
<body class="easyui-layout">
	<div data-options="region:'north'" style="background-color: #E0ECFF;height: 78px">
		<table cellpadding="5px" width="100%">
			<tr>
				<td width="50%">
					<img alt="logo" src="${pageContext.request.contextPath }/pic/logo.png">
				</td>
				<td valign="bottom" align="right" width="50%">
					<font size="3"><strong>欢迎：</strong>
						${sessionScope.membershipvo.user_id_ }(${sessionScope.membershipvo.first_ }${sessionScope.membershipvo.last_ })
						【${sessionScope.membershipvo.name_ }】</font>
				</td>
			</tr>
		</table>
	</div>

	<div data-options="region:'center'">
		<div id="tabs" class="easyui-tabs" data-options="fit:true,border:false">
			<div title="首页">
				<div align="center" style="padding-top:100px"><font color="red" size="10">欢迎使用！</font></div>
			</div>
		</div>
	</div>
	
	<div data-options="region:'west',title:'导航菜单栏',split:true" style="width:200px">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<c:if test="${sessionScope.membershipvo.name_=='管理员' }">
				<div title="基础数据管理" style="padding: 10px" data-options="iconCls:'icon-items'">
					<a href="javascript:openTab('用户管理','userManage.jsp','icon-man')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-man'"
						style="width: 150px">用户管理</a>
					<a href="javascript:openTab('用户组管理','groupManage.jsp','icon-group')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-group'"
						style="width: 150px">用户组管理</a>
					<a href="javascript:openTab('用户权限管理','authorityManage.jsp','icon-allowed')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-allowed'"
						style="width: 150px">用户权限管理</a>
				</div>
				<div title="流程管理" style="padding:10px" data-options="iconCls:'icon-flow'">
					<a href="javascript:openTab('流程部署管理','deployManage.jsp','icon-deployment')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-deployment'"
						style="width: 150px">流程部署管理</a>
					<a href="javascript:openTab('流程定义管理','processDefinitionManage.jsp','icon-definition')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-definition'"
						style="width: 150px">流程定义管理</a>
				</div>
				<div title="任务管理" data-options="iconCls:'icon-tasks'" style="padding:10px">
					<a href="javascript:openTab('代办任务管理','daibanManage.jsp','icon-tip')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-tip'"
						style="width: 150px">代办任务管理</a>
					<a href="javascript:openTab('历史任务管理','lishiManage.jsp','icon-search')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'"
						style="width: 150px">历史任务管理</a>
				</div>
			</c:if>
			<c:if test="${sessionScope.membershipvo.name_=='职工' }">
				<div title="业务管理" style="padding:10px" data-options="iconCls:'icon-service'">
					<a href="javascript:openTab('请假管理','leaveManage.jsp','icon-ask')"
						class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-ask'"
						style="width: 150px">请假管理</a>
				</div>
			</c:if>
			<div title="系统管理" style="padding:10px" data-options="iconCls:'icon-system'">
				<a href="javascript:openModifyPasswordDialog()"
					class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'"
					style="width: 150px">修改密码</a>
				<a href="javascript:logout()"
					class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-signout'"
					style="width: 150px">安全退出</a>
			</div>
		</div>
	</div>
	
	<div data-options="region:'south'" style="height:30px;padding:5px" align="center">
		Copyright © 2016-2020 www.xiaowu.com 版权所有
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:400;height:250px;padding:10px"
		data-options="closed:true,buttons:'#dlg-buttons',title:'修改密码',draggable:false">
		<form id="fm" method="post">
			<table cellpadding="8px">
				<tr>
					<td>用户名：</td>
					<td><input id="userId" name="id_" type="text" readonly="readonly"
						value="${sessionScope.membershipvo.user_id_ }" style="width:200px"></td>
				</tr>
				<tr>
					<td>原密码：</td>
					<td><input id="oldPassword" type="password" class="easyui-validatebox"
						data-options="required:true" style="width:200px"></td>
				</tr>
				<tr>
					<td>新密码：</td>
					<td><input id="newPassword" type="password" class="easyui-validatebox"
						data-options="required:true" style="width:200px"></td>
				</tr>
				<tr>
					<td>确认新密码：</td>
					<td><input id="newPassword2" type="password" name="pwd_" class="easyui-validatebox"
						data-options="required:true" style="width:200px"></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:modifyPassword()" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		<a href="javascript:closeModifyDialog()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">关闭</a>
	</div>

</body>
</html>