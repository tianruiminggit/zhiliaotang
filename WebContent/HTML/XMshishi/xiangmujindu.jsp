<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/demo/demo.css">
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
	</head>

	<body>
		<div class="easyui-panel" title="项目进度填写表" style="width:100%">
			<div style="padding:10px 60px 20px 60px">
				<form method="post" action="index.html">
					<table cellpadding="5" style="margin: 0 auto" border="2">
						<tr>
							<td>项目名称:</td>
							<td>
								<select class="easyui-combobox" name="project_kind">
		    					<option value="农牧林">AA</option>
		    					<option value="水利">BBB</option>
		    					<option value="教育">CC</option>
	    						</select>
							</td>
						</tr>
						<tr>
							<td>时间:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="readonly:true" value="2017"></input>
							</td>
						</tr>
						<tr>
							<td>资金是否到位:</td>
							<td>
								<input type="radio" name="zj" value="yes" />是
								<input type="radio" name="zj" value="no" />否
							</td>
						</tr>
						<tr>
							<td>项目是否启动:</td>
							<td>
								<input type="radio" name="qd" value="yes" />是
								<input type="radio" name="qd" value="no" />否
							</td>
						</tr>
						<tr>
							<td>补助资金:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>报账进度(%):</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>项目进度(%):</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>其他资金:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>备注:</td>
							<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
							</td>
						</tr>
						<tr>
							<td>填报单位:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>负责人:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>填报人:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options="required:true"></input>
							</td>
						</tr>
					</table>
					<div style="text-align:center;padding:5px">
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取消</a>
					</div>
				</form>
			</div>
		</div>
	</body>

</html>