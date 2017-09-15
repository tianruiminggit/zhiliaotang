<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Basic Layout - jQuery EasyUI Demo</title>
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/demo/demo.css">
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
	</head>

	<body>
		<h1 align="center">项目验收</h1>
		<div class="easyui-layout" style="width:100%;height:350px;">
			<div data-options="region:'north'" style="height:50px">
				<div style="line-height: 45px;">
					地区：
					<select name="city">
						<option value="XX">XX市</option>
					</select>
					<select name="county">
						<option value="XX">XX县</option>
					</select> 时间：
					<select name="time">
						<option value="2017">2017</option>
					</select>
				</div>
			</div>
			<div data-options="region:'center'">
				<table class="easyui-datagrid" data-options="url:'testjson.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
					<thead>
						<tr>
							<th data-options="field:'id'" hidden="true"></th>
							<th data-options="field:'region'" width="80">地区</th>
							<th data-options="field:'project_name',align:'right'" width="80">项目名称</th>
							<th data-options="field:'buzhuzj',align:'right'" width="80">补助资金</th>
							<th data-options="field:'yanshouchengyuan',align:'center'" width="200">验收成员</th>
							<th data-options="field:'状态'" width="50">状态</th>
							<th data-options="field:'操作',align:'center'" width="160">操作</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
		<div>
			<form method="post">
				<table cellpadding="5" style="margin: 0 auto" border="3">
					<tr>
						<td>项目名称:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>批复文号:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>项目实施内容及效益:</td>
						<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
						</td>
					</tr>
					<tr>
						<td>验收小组结论/意见:</td>
						<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
						</td>
					</tr>
					<tr>
						<td>验收小组负责人:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>实施单位篡改情况:</td>
						<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
						</td>
					</tr>
					<tr>
						<td>项目负责人:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>验收组复查意见:</td>
						<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
						</td>
					</tr>
					<tr>
						<td>项目负责人:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
				</table>
				<div style="width: 100px;margin: 0 auto;">
					<button>下一步</button><button>返回</button>
				</div>
			</form>
		</div>
		<div align="center">
			<form>
				<table>
					<tr>
						<td>姓名:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>工作单位:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>职称/职务:</td>
						<td>
							<input class="easyui-textbox" type="text" name="project_name" ></input>
						</td>
					</tr>
					<tr>
						<td>级别:</td>
						<td>
							<input type="radio" name="level" value=""/>验收组负责人
							<input type="radio" name="level" value=""/>复查组负责人
							<input type="radio" name="level" value=""/>成员
						</td>
					</tr>
				</table>
			</form>
		</div>

	</body>

</html>