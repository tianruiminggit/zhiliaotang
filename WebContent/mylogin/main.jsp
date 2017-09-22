<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height: 100%">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"">
<title>Insert title here</title>



<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/demo/demo.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<style type="text/css">
	body{
			margin: 0;
			padding: 0;
        }
    .img1{
     	margin-top:20px;
    }
        .div1{
            background: url("images/backImg.png") no-repeat;
            background-size:100% 100px;
            
        }
</style>

<script type="text/javascript">
$(function(){
	console.log("开始Ajax请求：");
	$("#tree").tree({
		lines:true,
		url:'AuthServlet?action=menu&parentId=-1',
		onLoadSuccess:function(){
			$("#tree").tree('expandAll');
		},
		onClick:function(node){
			console.log(node);
			if(node.id==20){
				logout();
			}else if(node.id==15){
				openPasswordModifyDialog();
			}else if(node.attributes.authPath){
				openTab(node);
			}
		}
	});
	
	function logout(){
		$.messager.confirm('系统提示','您确定要退出系统吗？',function(r){
			if(r){
				window.location.href='loginservlet?action=logout';
			}
		});
	}
	
	function openPasswordModifyDialog(){
		console.log("修改密码");
		url="user?action=modifyPassword";
		$("#dlg").dialog("open").dialog("setTitle","修改密码");
	}
	
	function openTab(node){
		if($("#tabs").tabs("exists",node.text)){
			$("#tabs").tabs("select",node.text);
		}else{
			var content="<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src="+node.attributes.authPath+"></iframe>"
			$("#tabs").tabs("add",{
				title:node.text,
				iconCls:node.iconCls,
				closable:true,
				content:content
			});
		}
	}
});
    
    
    
    
    
</script>
</head>


<body style="height: 100%">


<div class="easyui-layout" style="width:100%;height:100%;">

    <div data-options="region:'north'" style="height:100px;">
    
    	<!--  <img class="img1" alt="" src="images/logo.png">   -->
    	
		
    </div>
    
    <div data-options="region:'south',split:true" style="height:50px; line-height:40px">

		<span style="margin-left:20px">欢迎：${currentUser.userName }&nbsp;『${currentUser.userDescription }』</span>
    </div>
    
    <!-- 菜单栏 -->
    <div data-options="region:'west',split:true" title="导航菜单" style="width:15%;">
        <div class="easyui-panel" style="padding:15px;height: 765px;">
            <ul id="tree" class="easyui-tree"></ul>
        </div>
    </div>
    <!-- 主页 -->
    <div data-options="region:'center'">
    	<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" data-options="iconCls:'icon-home'">
				<div align="center" style="padding-top: 100px;">
					<!--<font color="red" size="10">欢迎使用</font>  -->
				</div>
			</div>
		</div>
    </div>
    
</div>

</body>
</html>