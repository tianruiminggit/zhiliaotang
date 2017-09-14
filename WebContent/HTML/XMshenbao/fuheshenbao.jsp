<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Basic Layout - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.5.3/demo/demo.css">
<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
</head>

<body>
	<div class="easyui-layout" style="width: 100%; height: 350px;">
		<div data-options="region:'north'" style="height: 50px">
			<div style="line-height: 50px;">
				地区： <select name="city">
					<option value="XX">XX市</option>
				</select> <select name="county">
					<option value="XX">XX县</option>
				</select> 时间： <select name="time">
					<option value="2017">2017</option>
				</select>
			</div>
		</div>
		<div data-options="region:'center'">
			<table class="easyui-datagrid"
				data-options="url:'',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'region'" width="80">地区</th>
						<th data-options="field:'单位名称'" width="100">单位名称</th>
						<th data-options="field:'project_name',align:'right'" width="80">项目名称</th>
						<th data-options="field:'buzhuzj',align:'right'" width="80">补助资金</th>
						<th data-options="field:'状态'" width="150">状态</th>
						<th data-options="field:'操作',align:'center'" width="60">操作</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>

</body>

</html>