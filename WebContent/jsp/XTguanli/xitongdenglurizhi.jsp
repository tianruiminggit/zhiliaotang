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
		<div style="margin:20px 0;"></div>
		<div class="easyui-layout" style="width:1300px;height:500px;">

			<div data-options="region:'center',title:'系统登录日志',iconCls:'icon-ok'">
				<!---选择查询-->
				<!--<div style="margin:20px 0;"></div>-->
				<!--	<input class="easyui-searchbox" data-options="prompt:'Please Input Value',menu:'#mm',searcher:doSearch" style="width:300px"></input>
					<div id="mm">
						<div data-options="name:'all',iconCls:'icon-ok'">--请选择用户-</div>
						<div data-options="name:'sports'">用户1</div>
						<div data-options="name:'sports'">用户2</div>
						<div data-options="name:'sports'">用户3</div>
					</div>
					-->
					<!--多条件选择查询按钮组-->
					<div style="height: 60px;vertical-align: top">
						<from >							
							<div style="display: inline-block;width: 300px;">
								用户名：
								<input type="text" name="用户名" />
							</div>
							<div style="display: inline-block;width: 300px;">
								IP地址：
								<input type="text" name="" />
							</div>

							<!---日期查询-->
							<div style="display: inline-block;width: 500px; style="vertical-align: top"">
								<table>
									<tr>
										<td>Start Date:</td>
										<td>
											<input class="easyui-datebox" data-options="sharedCalendar:'#cc'">
										</td>
										<td>End Date:</td>
										<td>
											<input class="easyui-datebox" data-options="sharedCalendar:'#cc'">
										</td>
									</tr>
								</table>
								<div id="cc" class="easyui-calendar"></div>

							</div>
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认</a>
						</from>
					</div>
				
				<table class="easyui-datagrid" style="width:1300px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">用户</th>
				<th data-options="field:'productid',width:100">用户IP</th>
				<th data-options="field:'listprice',width:80,align:'right'">登录时间</th>
				<th data-options="field:'unitcost',width:80,align:'right'">登出时间</th>
				<th data-options="field:'attr1',width:250">操作系统</th>
				<th data-options="field:'status',width:60,align:'center'">浏览器</th>
			</tr>
		</thead>
			<tr>
				<td>用户1</td>
				<td>用户IP1</td>
				<td>登录时间测试1</td>
				<td>登出时间测试1</td>
				<td>操作系统测试1</td>
				<td>浏览器测试1</td>
			</tr>
	</table>


			</div>
</div>
	</body>
	<script>
		function doSearch(value, name) {
			alert('You input: ' + value + '(' + name + ')');
		}
	</script>

</html>