<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请假管理</title>
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
	function openAddLeaveDialog(){
		$("#dlg").dialog("open");
	}
	function closeLeaveDialog(){
		resetValue();
		$("#dlg").dialog("close");
	}
	function resetValue(){
		$("#leaveDays").val("");
		$("#leaveReason").val("");
	}
	
	function saveLeave(){
		$("#fm").form("submit",{
			url:'${pageContext.request.contextPath}/leave/save.do',
			onSubmit:function(){
				return $(this).form("validate");
			},
			success:function(result){
				if (result=="success") {
					$.messager.alert("系统提示","保存成功！");
					resetValue();
					$("#dlg").dialog("close");
					$("#dg").datagrid("reload");
				}else{
					$.messager.alert("系统提示","保存失败！");
					$("#dlg").dialog("close");
					return;
				}
			}
		})
	}
	
	function formatAction(value,row){
		if (row.state=="未提交") {
			return "<a href='javascript:startApply("+row.id+")'>提交申请</a>";
		}else{
			return "<a href='javascript:openListCommentDialog("+row.processinstanceid+")'>查看历史批注</a>"
		}
	}
	
	function startApply(id){
		$.ajax({
			url:'${pageContext.request.contextPath}/leave/startApply.do',
			data:'{"id":"'+id+'"}',
			type:'post',
			contentType:'application/json;charset=utf-8',
			success:function(result){
				if (result=="success") {
					$.messager.alert("系统提示","请假申请提交成功，目前正在审核，请耐心等待！");
					$("#dg").datagrid("reload");
				}else{
					$.messager.alert("系统提示","请假申请提交失败，请联系系统管理员!");
				}
			}
		})
	}
	
	function openListCommentDialog(processInstanceId){
		$("#dg2").datagrid("load",{
			"processInstanceId":processInstanceId
		});
		$("#dlg2").dialog("open");
	}
	
	function dateFormat(value){
		var date=new Date(value);
		var y=date.getFullYear();
		var m=date.getMonth()+1;
		var d=date.getDate();
		return y+"-"+m+"-"+d;
	}
</script>
</head>
<body style="margin:1px">
	<table id="dg" title="请假管理" class="easyui-datagrid" data-options="fit:true,fitColumns:true,pagination:true,
		rownumbers:true,toolbar:'#tb',url:'${pageContext.request.contextPath }/leave/getLeaveList.do?userId=${sessionScope.membershipvo.user_id_}'">
		<thead>
			<tr>
				<th data-options="field:'c',checkbox:true,align:'center'"></th>
				<th data-options="field:'id',width:30,align:'center'">编号</th>
				<th data-options="field:'leavedate',width:30,align:'center',formatter:dateFormat">请假日期</th>
				<th data-options="field:'days',width:30,align:'center'">请假天数</th>
				<th data-options="field:'leavereason',width:30,align:'center'">请假原因</th>
				<th data-options="field:'state',width:30,align:'center'">审核状态</th>
				<th data-options="field:'processinstanceid',width:30,align:'center'">流程实例ID</th>
				<th data-options="field:'cz',width:30,align:'center',formatter:formatAction">操作</th>
			</tr>
		</thead>
	</table>
	
	<div id="tb">
		<a href="javascript:openAddLeaveDialog()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'">新增请假单</a>
	</div>
	
	<div id="dlg" class="easyui-dialog" data-options="closed:true,buttons:'#dlg-bts',title:'添加请假信息'" style="width:600px;height:300px;padding:10px">
		<form id="fm" method="post">
			<table cellpadding="8px">
				<tr>
					<td>请假天数：</td>
					<td>
						<input id="leaveDays" name="days" type="text" class="easyui-numberbox" data-options="required:true">
					</td>
				</tr>
				<tr>
					<td valign="top">请假原因：</td>
					<td>
						<input type="hidden" name="user.id_" value="${sessionScope.membershipvo.user_id_ }">
						<input type="hidden" name="state" value="未提交">
						<textarea id="leaveReason" name="leavereason" rows="5" cols="50" class="easyui-validatebox" data-options="required:true"></textarea>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="dlg-bts">
		<a href="javascript:saveLeave()" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
		<a href="javascript:closeLeaveDialog()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">关闭</a>
	</div>
	
	<div id="dlg2" class="easyui-dialog" data-options="closed:true,buttons:'#dlg2-bts',title:'查看历史批注'" style="width:750px;height:250px;padding:10px">
		 <table id="dg2" class="easyui-datagrid" style="width:700px;height:200px" data-options="fitColumns:true,fit:true,
		 	url:'${pageContext.request.contextPath }/task/listHistoryComment.do'">
		 	<thead>
		 		<tr>
		 			<th data-options="width:120,field:'time',align:'center'">批注时间</th>
		 			<th data-options="width:100,field:'userId',align:'center'">批注人</th>
		 			<th data-options="width:200,field:'fullMessage',align:'center'">批注信息</th>
		 		</tr>
		 	</thead>
		 </table>
	</div>
</body>
</html>