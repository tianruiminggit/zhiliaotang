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

		<input class="easyui-searchbox" data-options="prompt:'请输入关键字',menu:'#mm',searcher:doSearch" style="width:300px"></input>
		<div id="mm">
			<div data-options="name:'all',iconCls:'icon-ok'">按登录名</div>
			<div data-options="name:'sports'">Sports News</div>
		</div>
		<script>
			function doSearch(value, name) {
				alert('You input: ' + value + '(' + name + ')');
			}
		</script>

		<table id="my-table" border="2" class="easyui-datagrid" title="Basic DataGrid" style="width:1000px;height:250px" data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
			<thead>
				<!---表头-->
				<tr>
					<th data-options="field:'itemid',width:80">姓名</th>
					<th data-options="field:'productid',width:100">性别</th>
					<th data-options="field:'listprice',width:80,align:'right'">账号</th>
					<th data-options="field:'unitcost',width:80,align:'right'">部门</th>
					<th data-options="field:'attr1',width:250">登录次数</th>
					<th data-options="field:'status',width:100,align:'center'">最后登录时间</th>
					<th data-options="field:'url1',width:60,align:'center'">修改</th>
					<th data-options="field:'url4',width:60,align:'center'">修改</th>
					<th data-options="field:'url3',width:60,align:'center'">权限</th>
				</tr>
				<!--表格内容-->

			</thead>
			<tr>
				<td>张三</td>
				<td>男</td>
				<td>账号1</td>
				<td>部门1</td>
				<td>登录次数1</td>
				<td>登录时间</td>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton" onclick="t()">修1改</a>
					<!--<a href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g1'">修改</a>-->
				</td>
				<td>
					<input type="checkbox" name="checkbox1" id="fuxuan" />
				</td>
				<td>
					<a href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g1'">权限</a>
				</td>
			</tr>
			<tr>
				<td >测试合并单元格</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<a href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g1'">添加用户</a>
				</td>
				<td>
					<a href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g1'" onclick="quanxuan()">全选</a>
				</td>
				<td>
					<a href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g1'">删除</a>
				</td>
			</tr>
		</table>

		<div>
		</div>
		<!---修改用户弹出框表单-->
		<div id="abc" data-options="iconCls:'icon-save',resizable:true,modal:true,closable:true,maximizable:true " title="修改用户" style="display: none;">
			<!---修改用户弹出框表单-->
			<form id="ff" class="easyui-form" method="post" data-options="novalidate:true">
				<table cellpadding="5">
					<tr>
						<td>姓名:</td>
						<td><input class="easyui-textbox" type="text" name="name" data-options="required:true" style="width: 100px ;height: 30px;"></input>
						</td>
					</tr>
					<tr>
						<td>登录名:</td>
						<td><input class="easyui-textbox" type="text" name="name" data-options="required:true" style="width: 100px ;height: 30px;"></input>
						</td>
					</tr>

					<tr>
						<td>密码:</td>
						<td><input class="easyui-textbox" type="password" name="pwd" data-options="required:true" style="width: 100px ;height: 30px;"></input>
						</td>
					</tr>
					<tr>
						<td>电话:</td>
						<td><input class="easyui-textbox" type="text" name="" data-options="required:true" style="width: 100px ;height: 30px;"></input>
						</td>
					</tr>
					<tr>
						<td>性别:</td>
						<td>
							<input type="radio" name="lang" value="01" checked="checked"><span>男</span>
							<input type="radio" name="lang" value="02"><span>女</span>
						</td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'" style="width: 100px ;height: 30px;"></input>
						</td>
					</tr>

					<tr>
						<td>
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确认</a>
						</td>
						<td>
							<a href="userpower.html" class="easyui-linkbutton" onclick="clearForm()">取消</a>
						</td>
					</tr>

				</table>
			</form>

		</div>
<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
		<script>
			function t() {
				console.log("safd");
				$('#abc').panel({
					width: 500,
					height: 150,
					title: 'My Panel',
					tools: [{
						iconCls: 'icon-add',
						handler: function() {
							alert('new')
						}
					}, {
						iconCls: 'icon-save',
						handler: function() {
							alert('save')
						}
					}]
				});

			}

			function quanxuan() {
				$(":checkbox").each(function() {
					if($(this).attr("checked") == "checked") {
						$(this).removeAttr("checked");
					} else {
						$(this).attr("checked", "checked");
					}
				});

			}
			
		/*	 $('#my-table').datagrid({
        onLoadSuccess:function(){
            var merges = [{
                index:2,
                rowspan:2
            },{
                index:5,
                rowspan:2
            },{
                index:7,
                rowspan:2
            }];
            for(var i=0; i<merges.length; i++)
                $('#tt').datagrid('mergeCells',{
                    index:merges[i].index,
                    field:'productid',
                    rowspan:merges[i].rowspan
                });
        }
    });*/
		</script>
	</body>

</html>