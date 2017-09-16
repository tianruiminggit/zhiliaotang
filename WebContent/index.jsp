<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate Form on Submit - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/demo/demo.css">
	<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
</head>
<body>
	<div class="easyui-layout" style="width: 100%; height: 600px;">
		<div data-options="region:'north'" style="height: 50px">
		</div>
		<div data-options="region:'south',split:true" style="height: 50px;"></div>
		<div data-options="region:'west',split:true" title="West"
			style="width: 20%;">
			<ul id="tree"></ul>
		</div>
		<div
			data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
			<div id="table" class="easyui-tabs"
				style="width: 100%; height: 100%;"></div>
		</div>
	</div>


	<script>
		$('#tree').tree({
			url : 'tree_data.json',
			onClick:function(node){
				if(node.url == null){
					console.log("dasd");
				}else
					addTab(node.text,node.url);
			}
		});
		function addTab(title, url) {
			if ($('#table').tabs('exists', title)) {
				$('#table').tabs('select', title);
			} else {
				var content = '<iframe scrolling="auto" frameborder="0"  src="'
						+ url + '" style="width:100%;height:100%;"></iframe>';
				$('#table').tabs('add', {
					title : title,
					content : content,
					closable : true
				});
			}
		}
	</script>
</body>
</html>