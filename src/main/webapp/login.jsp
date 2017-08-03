<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/pic/main_logo.ico" rel="shortcut icon">
<title>职工请假系统-登录界面</title>
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
	function resetData(){
		$("#userId").val("");
		$("#password").val("");
		$("#groupId").val("");
	}
	
	function submitData(){
		$("#fm").form("submit",{
			url:"${pageContext.request.contextPath}/user/login.do",
			onSumit:function(){
				if($("#groupId").combobox("getValue")==""){
					$.messager.alert("系统提示","请选择用户角色！");
					return false;
				}
				return $(this).form("validate");
			},
			success:function(result){
				if(result=="success"){
					window.location.href="${pageContext.request.contextPath}/jsp/main.jsp";
				}else{
					$.messager.alert("系统提示","用户名或密码或角色选择错误！");
					return;
				}
			}
		})
	}
</script>

</head>

<body>
	<div style="position:absolute;width:100%;height:100%;left:0;top:0">
		<img src="${pageContext.request.contextPath }/pic/login_bg.jpg" width="100%" height="100%" style="left:0;top:0">
	</div>
	
	<div class="easyui-window" title="职工请假系统"
		data-options="modal:true,closable:false,draggable:false,minimizable:false,maximizable:false,collapsible:false"
		style="width:400px;height:280px;padding:10px" >
		<form id="fm" method="post">
			<table cellpadding="6px" align="center">
				<tr align="center">
					<th colspan="2" style="padding-bottom:10px"><big>用  户  登  录</big></th>
				</tr>
				<tr>
					<td>用户名：</td>
					<td><input id="userId" name="userId" type="text"
							class="easyui-validatebox" required="true" style="width:200px"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input id="password" name="password" type="password"
							class="easyui-validatebox" required="true" style="width:200px"></td>
				</tr>
				<tr>
					<td>角色：</td>
					<td><input id="groupId" name="groupId" class="easyui-combobox"
							data-options="editable:false,panelHeight:'auto',valueField:'id_',textField:'id_',
							url:'${pageContext.request.contextPath }/group/getGroupList.do'" required="true"></td>
				</tr>
				<tr>
					<td colspan="2">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<a href="javascript:submitData()" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:resetData()" class="easyui-linkbutton" data-options="iconCls:'icon-no'">重置</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>