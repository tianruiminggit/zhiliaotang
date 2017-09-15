<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../../jquery-easyui-1.5.3/demo/demo.css">
<script type="text/javascript"
	src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
<script type="text/javascript"
	src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
</head>

<body>
	<h1 align="center">项目申报表</h1>
	<div class="easyui-panel" title="项目申报填写表" style="width: 100%">
		<div style="padding: 10px 60px 20px 60px">
			<form method="post">
				<table cellpadding="5" style="margin: 0 auto">
					<tr>
						<td>选择地区:</td>
						<td><select class="easyui-combobox" name="province">
								<option value="四川省">四川省</option>
								<option value="河北省">河北省</option>
						</select> <select class="easyui-combobox" name="city">
								<option value="四川省">四川省</option>
								<option value="河北省">河北省</option>
						</select> <select class="easyui-combobox" name="county">
								<option value="四川省">四川省</option>
								<option value="河北省">河北省</option>
						</select></td>
					</tr>
					<tr>
						<td>选择类别:</td>
						<td><select class="easyui-combobox" name="project_kind">
								<option value="农牧林">农牧林</option>
								<option value="水利">水利</option>
								<option value="教育">教育</option>
						</select> <select class="easyui-combobox" name="kindchild">
								<option value="农牧林">农牧林</option>
								<option value="水利">水利</option>
								<option value="教育">教育</option>
						</select></td>
					</tr>
					<tr>
						<td>项目名称:</td>
						<td><input class="easyui-textbox" type="text"
							name="project_name" data-options="required:true"></input></td>
					</tr>
					<tr>
						<td>项目申报文件号:</td>
						<td><input class="easyui-textbox" type="text"
							name="project_filenum" data-options="required:true"></input></td>
					</tr>
					<tr>
						<td>单位法人:</td>
						<td><input class="easyui-textbox" type="text"
							name="declar_lawer" data-options="required:true"></input></td>
					</tr>
					<tr>
						<td>技术负责人:</td>
						<td><input class="easyui-textbox" type="text"
							name="technology" data-options="required:true"></input></td>
					</tr>
					<tr>
						<td rowspan="4">预算:</td>
						<td>补助资金：<input class="easyui-textbox" type="text"
							name="buzhuzj" data-options="required:true"></input>
						</td>
					</tr>
					<tr>
						<td>其他资金：<input class="easyui-textbox" type="text"
							name="othermoney" data-options="required:true"></input>
						</td>
					</tr>
					<tr>
						<td>自筹资金：<input class="easyui-textbox" type="text"
							name="zichouzj" data-options="required:true"></input>
						</td>
					</tr>
					<tr>
						<td>合&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计：<input
							class="easyui-textbox" type="text" name="count"
							data-options="readonly:true"></input>
						</td>
					</tr>
					<tr>
						<td>推荐文件号:</td>
						<td><input class="easyui-textbox" type="text"
							name="tuijianfile" data-options="required:true"></input></td>
					</tr>
					<!--<tr>
	    			<td>Message:</td>
	    			<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
	    		</tr>-->
				</table>
				<div style="text-align: center; padding: 5px">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="submitForm()">提交</a> <a href="javascript:void(0)"
						class="easyui-linkbutton" onclick="clearForm()">取消</a>
				</div>
			</form>
		</div>
	</div>
</body>

</html>