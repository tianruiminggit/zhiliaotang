<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/demo/demo.css">
		<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
	</head>
	<body>
		<h1 align="center">进度汇总</h1>
		<div class="easyui-layout" style="width:100%;height:350px;">
			<div data-options="region:'north'" style="height:45px">
				<div style="line-height: 40px;">
					地区：
					<select name="city">
						<option value="XX">XX市</option>
					</select>
					<select name="county">
						<option value="XX">XX县</option>
					</select>
					时间：
					<select name="time">
						<option value="2017">2017</option>
					</select>
				</div>
			</div>
			<div data-options="region:'center'">
				<table id="tb" class="easyui-datagrid" data-options="url:'testjson.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true,pagination:true">
					<thead>
						<tr>
							<th data-options="field:'id'" hidden="true"></th>
							<th data-options="field:'region'" width="10%">地区</th>
							<th data-options="field:'单位名称'" width="10%">填报单位</th>
							<th data-options="field:'project_name',align:'right'" width="30%">项目名称</th>
							<th data-options="field:'A',align:'right'" width="10%">资金是否到位</th>
							<th data-options="field:'B'" width="10%">项目是否启动</th>
							<th data-options="field:'B',align:'center'" width="30%">报账进度</th>
							<th data-options="field:'C',align:'center'" width="30%">完成进度</th>
							<th data-options="field:'D',align:'center'" width="30%">状态</th>
							<th data-options="field:'操作',align:'center'" width="30%">操作</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</body>
</html>
