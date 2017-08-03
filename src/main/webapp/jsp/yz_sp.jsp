<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>院长审批</title>
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
	$(function(){
		$("#fm").form("load","${pageContext.request.contextPath}/leave/getLeaveByTaskId.do?taskId=${param.taskId}");
	})
	
	function submit(state){
		$("#fm").form("submit",{
			url:'${pageContext.request.contextPath}/task/yz_sp.do?state='+state,
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				if (result=="success") {
					$.messager.alert("系统提示","操作成功！");
					window.parent.closeTab("办理任务");
				}else{
					$.messager.alert("系统提示","操作失败，请联系系统管理员！");
					return;
				}
			}
		})
	}
	
</script>
</head>
<body style="margin: 5px">
	
	<form id="fm" method="post">
		<table cellpadding="8px" style="width: 700px;height:300px">
			<tr>
				<td>请假人：</td>
				<td>
					<input type="text" id="leavePerson" name="id_" readonly="readonly">
				</td>
				<td>&nbsp;&nbsp;</td>
				<td>请假天数：</td>
				<td>
					<input type="text" id="leaveDays" name="days" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td valign="top">请假原因：</td>
				<td colspan="4">
					<textarea id="leaveReason" name="leavereason" rows="2" cols="50" readonly="readonly"></textarea>
				</td>
			</tr>
			<tr>
				<td valign="top">批注：</td>
				<td colspan="4">
					<textarea id="comment" name="comment" rows="2" cols="50" class="easyui-validatebox" data-options="required:true"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="taskId" value="${param.taskId }">
				</td>
				<td colspan="4">
					<a href="javascript:submit(1)" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">批准</a>
					<a href="javascript:submit(2)" class="easyui-linkbutton" data-options="iconCls:'icon-no'">驳回</a>
				</td>
			</tr>
		</table>
	</form>	
	
</body>
</html>