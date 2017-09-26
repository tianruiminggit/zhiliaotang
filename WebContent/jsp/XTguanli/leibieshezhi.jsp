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
		<link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.5.3/demo/demo.css">
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
		<script type="text/javascript" src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
		<style type="text/css">
		/* 	#insertdiv{
			display: inline-block;
			position: absolute;
			/* display: none; */
		}
		#updatediv{
			display: inline-block;
			display: none;
			position: absolute;
		} */
		</style>
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
						<input type="hidden" id="hidevalue">
						<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加分类</a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="xiugai()"  id="XG"  >修改分类</a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="shanchu()">删除分类</a>
					</div>
					
					<!-- 添加分类 -->
						<div style="padding:10px 60px 20px 60px" id="insertdiv">				
							<form id="ff" method="get" action="../../projectKindController/insert.do" >
								<table cellpadding="5">
									<tr id="chosetypeTr">
										<td>添加位置:</td>
										<td>
											<select class="" name="table" id="chosetype" onchange="choseType()">
												<option value="">--请选择--</option>
												<option value="tb_projectkind">上级</option>
												<option value="tb_kindchild">下级</option>														
											</select>
										</td>									
									</tr>
									
									<tr id="shangjimuluText">
										<td>添加分类名称1:</td>
										<td><input class="easyui-textbox" type="text" name="kind_name" data-options="required:true"></input>
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
											<select id="p-select" name="kind_id" onchange="chosekind()">
											</select>											
										</td>
									</tr>
									<tr id="zhenxiajichose">
										<td>二级目录：</td>
										<td>
											<select id="k-select" name="child_id" onchange=chosexiaji()>
											</select>											
										</td>
									</tr>
									
									
									<tr id="xiajimuluText"> 
										<td>添加分类名称2:</td>
										<td><input id="x_zilei" class="easyui-textbox" type="text" name="child_name" data-options="required:true"></input>
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
											<input class="easyui-textbox" type="text" name="kind_name" data-options="required:true"></input>						
										</td>
									</tr>
									
								</table>
							</form>
							<div style="text-align:left;padding:5px">
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">添加分类</a>
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重写</a>
							</div>
						</div>
					<!-- 修改分类 -->

					
					
				</div>	
				</div>
										
					<script>
	/* ===============================插入数据的JS代码=========================================== */
	
						/**
						  * 选择类型下拉框，当下拉框中的值是否改变时的判断
						  */
						function choseType(){						
							var chosetype1=$("#chosetype").val();//获得选择下拉框的节点设置的值 							 
							  chosetype3=$("#hidevalue").val()
						
	/* ==================================如果是修改界面======================================================= */
							 if(chosetype3=="XG"){
								console.log("jinru")
								if("tb_projectkind"==chosetype1){//如果值等于上级option的值  																	
									$("#xiajimuluchose").show();//显示下级目录的选择框
									chashangji();//调用查询上级目录的方法 
									$("#xiugaiText").show();
								}
								if("tb_kindchild"==chosetype1){//如果值等于下级option的值时
									$("#xiajimuluchose").show();//显示上级级目录的选择框
									chashangji();//调用查询上级目录的方法 
								
								
									//判断里面的值
									$("#xiugaiText").show();
								}								
							}
					/* =============删除================= */
							 else if(chosetype3=="SC"){
							
									if("tb_projectkind"==chosetype1){//如果值等于上级option的值  	
										 console.log("进入删除")
										$("#xiajimuluchose").show();//显示下级目录的选择框
										chashangji();//调用查询上级目录的方法 
										 
										$("#xiugaiText").hide();
									}
									if("tb_kindchild"==chosetype1){//如果值等于下级option的值时
										$("#xiajimuluchose").show();//显示上级级目录的选择框
										chashangji();//调用查询上级目录的方法 
										$("#zhenxiajichose").show();//显示二级目录
										
										//判断里面的值
										$("#xiugaiText").hide();
									}	
							 }
							/* =========== 如果是增加界面===================== */
							 else{ 
								if("tb_projectkind"==chosetype1){//如果值等于上级option的值  							
									showchoseshangji();									
								}
								if("tb_kindchild"==chosetype1){//如果值等于下级option的值时
									console.log("插入下级选择")
									showAll();
								}								
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
							$("#xiajimuluchose").show();//显示下级目录的选择框
							$("#xiajimuluText").show();//显示下级目录的输入框
							$("#chosetypeTr").show();//显示选择上下级的下拉框
							$("#shangjimuluText").hide();//隐藏上级目录的输入框
							$("#xiugaiText").hide();//隐藏修改下级输入框
							$("#zhenxiajichose").hide();//隐藏二级目录
							 chashangji();//调用查询上级目录的方法 
						}
						
						function yinchang(){
							$("#xiajimuluchose").hide();//隐藏下级选择框
							$("#xiajimuluText").hide();//隐藏下级输入框
							$("#chosetypeTr").show();//显示选择上下级下拉框
							$("#shangjimuluText").hide();//隐藏上级目录的输入框
							$("#xiugaiText").hide();//隐藏修改的输入框
							$("#zhenxiajichose").hide();//隐藏二级目录
						}
/* =======================================修改的JS代码=================================================== */	
				
						function  xiugai(){
							$("#hidevalue").val("XG");
							$("#xiajimuluchose").show();//显示下级目录的选择框
							$("#xiugaiText").show();
							//修改调整路径  form表单
							var at="../../projectKindController/updatetable.do";
							$("#ff").attr("action",at);
							console.log($("#ff").attr("action",at));
							yinchang();						
						}
						/* =======删除代码 ========*/
							function shanchu(){
							console.log("shanchu")
								$("#hidevalue").val("SC");
								$("#xiajimuluchose").show();//显示下级目录的选择框
								$("#xiugaiText").show();//显示修改输入框
								//修改调整路径  form表单
								var at="../../projectKindController/delete.do";
								$("#ff").attr("action",at);
								console.log($("#ff").attr("action",at));
								yinchang();	
							}
													
						
						//查上级的所有信息
						function chashangji(){
							$("#p-select").empty;//清空下拉框中的内容
							$("#p-select").append("<option value=''>--请选择--</option>");
							$.ajax({
								type:"get",
								url:"../../projectKindController/selectprojectkind.do",
								success:function(result){
									
									for(var i=0;i<result.length;i++){
										var json = result[i];
										$("#p-select").append("<option value=" + json.kind_id+">"+json.kind_name+"</option");
									}
								}
							});
							
						}
						function chaxiaji(){
							console.log($("#p-select").val())
							$("#k-select").empty;//清空下拉框中的内容
							$("#k-select").append("<option value=''>--请选择--</option>");
							$.ajax({
								type:"get",
								url:"../../projectKindController/selectchild.do?kind_id="+$("#p-select").val(),
								success:function(result){
									
									for(var i=0;i<result.length;i++){
										var json = result[i];
										$("#k-select").append("<option value=" + json.child_id+">"+json.child_name+"</option");
									}
								}
							});													
						}
						//一级目录的值改变时
						function chosekind(){
							var chosetype5=$("#p-select").val();//获得一级下拉框的节点设置的值 
							//当上级目录框中的值改变时 显示下级目录选择框，并查询子表的数据
							console.log("选择一级目录的值为："+chosetype5)
							 chosetype33=$("#hidevalue").val();
							if(chosetype5!=null ||chosetype !=""){
								//显示下级目录选择框
								chaxiaji();
								if("SC"!=chosetype33){
									$("#zhenxiajichose").show();//显示下级的目录
								}else{
									console.log("进入删除的判断")
								}
								
								
								
								
							}
							
						}
						
						
						
					
						function submitForm() {
							$('#ff').submit();
						}

						function clearForm() {
							$('#ff').form('reset');
						}
						
						
						function doAjax(){
							yinchang();//隐藏右边刚加载页面不需要显示部分的方法
							console.log("dojax");
							$("#mytree").tree({
								
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