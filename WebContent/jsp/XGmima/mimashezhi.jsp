<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
	<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/demo.css">
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
		

		<style>
			.span {
				display: inline-block;
			}
		</style>
	</head>

	<body>
		<div id="p" class="easyui-panel" title="修改密码" style="width:1300px;height:700px;padding:10px;">
			<div style="margin-bottom:20px">
				<span style="width:100px;height:32px" class="span">用户名:</span>

				<input class="easyui-textbox" style="width:200px;height:32px">
			</div>
			<div style="margin-bottom:20px">
				<span style="width:100px;height:32px" class="span">登录名:</span>
				<input class="easyui-textbox" style="width:200px;height:32px">
			</div>

			<div style="margin-bottom:20px">
				<span style="width:100px;height:32px" class="span">旧密码：</span>

				<input class="easyui-textbox" style="width:200px;height:32px" type="password">
			</div>
			<div style="margin-bottom:20px">
				<span style="width:100px;height:32px" class="span">新密码:</span>

				<input id="pwd" name="pwd" type="password" class="easyui-validatebox" data-options="required:true" style="width:200px;height:32px">
			</div>
			<div style="margin-bottom:20px">
				<span style="width:100px;height:32px" class="span">确认密码:</span>

				<input id="rpwd" name="rpwd" type="password" class="easyui-validatebox" required="required" validType="equals['#pwd']" style="width:200px;height:32px">
			</div>
			<div style="text-align:left;padding:5px">
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认</a>
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
			</div>

		</div>

	</body>

</html>