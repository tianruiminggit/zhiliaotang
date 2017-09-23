<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/demo/demo.css">
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
		<title></title>
	</head>

	<body>
		<table id="tb" title="已审批汇总" class="easyui-treegrid" style="width:100;height:250px" data-options="
				url: 'treegrid_data1.json',
				method: 'get',
				rownumbers: true,
				idField: 'id',
				treeField: 'name'
			">
			<thead>
				<tr>
					<th data-options="field:'name'" width="300">项目名称</th>
					<th data-options="field:'size'" width="300" align="right">补助资金</th>
					<th data-options="field:'date'" width="300">时间</th>
				</tr>
			</thead>
		</table>
		
		<div id="kuang" class="easyui-dialog" title="项目详情" style="width:600px;height:500px;"   
        data-options="iconCls:'icon-save',resizable:true,modal:true" closed="true">
			<form method="post">
					<table cellpadding="5" style="margin: 0 auto">
						<tr>
							<td>选择地区:</td>
							<td>
								<select class="easyui-combobox" name="province">
	    					<option value="四川省">四川省</option>
	    					<option value="河北省">河北省</option>
	    				</select>
								<select class="easyui-combobox" name="city">
	    					<option value="四川省">四川省</option>
	    					<option value="河北省">河北省</option>
	    				</select>
								<select class="easyui-combobox" name="county">
	    					<option value="四川省">四川省</option>
	    					<option value="河北省">河北省</option>
	    				</select>
							</td>
						</tr>
						<tr>
							<td>选择类别:</td>
							<td>
								<select class="easyui-combobox" name="project_kind">
	    					<option value="农牧林">农牧林</option>
	    					<option value="水利">水利</option>
	    					<option value="教育">教育</option>
	    				</select>
								<select class="easyui-combobox" name="kindchild">
	    					<option value="农牧林">农牧林</option>
	    					<option value="水利">水利</option>
	    					<option value="教育">教育</option>
	    				</select>
							</td>
						</tr>
						<tr>
							<td>项目名称:</td>
							<td><input class="easyui-textbox" type="text" name="project_name" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td>项目申报文件号:</td>
							<td><input class="easyui-textbox" type="text" name="project_filenum" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td>单位法人:</td>
							<td><input class="easyui-textbox" type="text" name="declar_lawer" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td>技术负责人:</td>
							<td><input class="easyui-textbox" type="text" name="technology" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td rowspan="4">预算:</td>
							<td>补助资金：<input class="easyui-textbox" type="text" name="buzhuzj" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td>其他资金：<input class="easyui-textbox" type="text" name="othermoney" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td>自筹资金：<input class="easyui-textbox" type="text" name="zichouzj" data-options=""></input>
							</td>
						</tr>
						<tr>
							<td>合&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计：<input class="easyui-textbox" type="text" name="count" data-options="readonly:true"></input>
							</td>
						</tr>
						<tr>
							<td>推荐文件号:</td>
							<td><input class="easyui-textbox" type="text" name="tuijianfile" data-options=""></input>
							</td>
						</tr>
						<!--<tr>
	    			<td>Message:</td>
	    			<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input></td>
	    		</tr>-->
					</table>
					<div style="text-align:center;padding:5px">
						<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
						<a href="#" class="easyui-linkbutton" onclick="closeDialog()">取消</a>
					</div>
				</form>
		</div>
		<script>
			function closeDialog(){
				$("#kuang").dialog("close")
			}
			$("#tb").treegrid({
				onClickRow:function(row){
					console.log(row)
					$("#kuang").dialog("open")
				}
			})
		</script>
	</body>

</html>