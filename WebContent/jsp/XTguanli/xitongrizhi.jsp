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
		
	</head>
	<body>
		<!DOCTYPE html>
<html>

<body>
	
	<div style="margin:20px 0;"></div>
	<div class="easyui-layout" style="width:700px;height:350px;">		
		<div data-options="region:'center',title:'系统日志',iconCls:'icon-ok'">
			<table class="easyui-datagrid"
					data-options="url:'datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'itemid'" width="80">日期</th>
						<th data-options="field:'productid'" width="100">标题</th>
						<th data-options="field:'listprice',align:'right'" width="80">内容</th>
						<th data-options="field:'unitcost',align:'right'" width="80">类型</th>
						<th data-options="field:'attr1'" width="150">操作员</th>
					</tr>
					
				</thead>
				<tr>
						<td>2017年9月11日</td>
						<td>测试一</td>
						<td>查看修改记录</td>
						<td></td>
						<td>系统管理员</td>
					</tr>
					<tr>
						<td>2017年9月22日</td>
						<td>测试2</td>
						<td>修改申报项目成功</td>
						<td></td>
						<td>用户1</td>
					</tr>
				
			</table>
		</div>
		
		
	</body>
</html>
