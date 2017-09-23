<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<!--引入easy UI框架    -->
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/demo.css">
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
		
	</head>

	<body onload="doAjax()">
		<h2>单位设置页面</h2>

		<div style="margin:20px 0;"></div>
		<div class="easyui-layout" style="width:300px;height:700px;display:inline-block">
			<ul id="mytree"></ul>
			
		</div>
<!--右边内容-->
			<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'" style="height: 700px;display:inline-block;vertical-align:top">

				<!--图标-->
				<div id="tb" style="padding:5px;height:auto">
					<div style="margin-bottom:5px">
						<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加分类</a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="xiugai()">修改分类</a>
						<!--<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>-->
						<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除分类</a>
					</div>
						<div style="padding:10px 60px 20px 60px">
							<form id="ff" method="post" action="../../projectKindController/">
								<table cellpadding="5">
									<tr id="chosetypeTr">
										<td>添加位置:</td>
										<td>
											<select class="" name="language" id="chosetype" onchange="choseType()">
												<option value="">--请选择--</option>
												<option value="tb_projectkind">上级</option>
												<option value="tb_kindchild">下级</option>														
											</select>
										</td>									
									</tr>
									
									<tr id="shangjimuluText">
										<td>添加分类名称1:</td>
										<td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
										</td>
									</tr>
									<!--
                                    	作者：offline
                                    	时间：2017-09-22
                                    	描述：一级目录查询下拉框
                                    -->
									<tr id="xiajimuluchose">
										<td>一级目录：</td>
										<td>
											<select id="p-select" name="p-select" onchange="chosekind()">
												<option>农牧业</option>
												<option>水利水电</option>
											</select>											
										</td>
									</tr>
									<tr id="xiajimuluText"> 
										<td>添加分类名称2:</td>
										<td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
										</td>
									</tr>
									<!--
                                    	作者：offline
                                    	时间：2017-09-22
                                    	描述：修改输入框
                                    -->
									<tr id="xiugaiText">
										<td>修改内容：</td>
										<td>
											<input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>						
										</td>
									</tr>
								</table>
							</form>
							<div style="text-align:left;padding:5px">
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">添加分类</a>
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重写</a>
							</div>
						</div>
					
				</div>	
				</div>
										
					<script>
						function submitForm() {
							$('#ff').form('submit');
						}

						function clearForm() {
							$('#ff').form('clear');
						}						
						/**
						  * 选择类型下拉框，当下拉框中的值是否改变时的判断
						  */
						function choseType(){						
							var chosetype1=$("#chosetype").val();//获得选择下拉框的节点设置的值
							if("tb_projectkind"==chosetype1){//如果值等于上级option的值  							
								showchoseshangji();
							}
							if("tb_kindchild"==chosetype1){//如果值等于下级option的值时
								showAll();
							}
						}
						/**
						 * 选择上级目录
						 * 只显示上级目录添加的文本框
						 */
							function showchoseshangji(){						
							
							$("#xiajimuluchose").hide();
							$("#xiajimuluText").hide();
							$("#chosetypeTr").show();
							$("#shangjimuluText").show();
							$("#xiugaiText").hide();
							
						}
						
						function showAll(){
							
							$("#xiajimuluchose").show();
							$("#xiajimuluText").show();
							$("#chosetypeTr").show();
							$("#shangjimuluText").hide();
							$("#xiugaiText").hide();
						}
						
						function yinchang(){
							$("#xiajimuluchose").hide();
							$("#xiajimuluText").hide();
							$("#chosetypeTr").show();
							$("#shangjimuluText").hide();
							$("#xiugaiText").hide();
						}
						
						function  xiugai(){
							console.log("进入修改页面")
							yinchang();//调用开始进入页面显示文本框的方法
							var chosetype1=$("#chosetype").val();//获得选择下拉框的节点设置的值
							if("tb_projectkind"==chosetype1){//如果值等于上级option的值  	查询显示上级的字段						
								chashangji();
							}
							if("tb_kindchild"==chosetype1){//如果值等于下级option的值时
								chaxiaji();
							}
						}
						//查上级的所有信息
						function chashangji(){
							
						}
						//查下级的所有信息
						function chaxiaji(){
							
						}
						
						
						
						
						function doAjax(){
							yinchang();//隐藏右边刚加载页面不需要显示部分的方法
							console.log("dojax")
							$("#mytree").tree({
							 	/* data:  [{"id":1,"state":"open","children":[{"id":11,"pid":1,"text":"扩累畜牧子类","state":"closed","children":[]},{"id":12,"pid":1,"text":"测试子类1","state":"closed","children":[]},{"id":13,"pid":1,"text":"测试子类2","state":"closed","children":[]}]},{"id":1,"state":"open","children":[{"id":11,"pid":1,"text":"扩累畜牧子类","state":"closed","children":[]},{"id":12,"pid":1,"text":"测试子类1","state":"closed","children":[]},{"id":13,"pid":1,"text":"测试子类2","state":"closed","children":[]}]},{"id":1,"state":"open","children":[{"id":11,"pid":1,"text":"扩累畜牧子类","state":"closed","children":[]},{"id":12,"pid":1,"text":"测试子类1","state":"closed","children":[]},{"id":13,"pid":1,"text":"测试子类2","state":"closed","children":[]}]},{"id":2,"state":"open","children":[{"id":21,"pid":2,"text":"公路子类","state":"closed","children":[]}]}]

 */								
							 url:"../../projectKindController/tree.do" 
								/* /*  loadData:function(data){ */
									/* var json = eval(data);
									console.log(json);
									return json;  */
									
								/*  }  */ 
							})
						}
					</script>

				
			
			
	</body>>
</html>