<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="UTF-8">
<title></title>
<!--引入easy UI框架    -->

<link rel="stylesheet" type="text/css"
	href="/declaration/jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="/declaration/jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="/declaration/jquery-easyui-1.5.3/demo/demo.css">
<script type="text/javascript"
	src="/declaration/jquery-easyui-1.5.3/jquery.min.js"></script>
<script type="text/javascript"
	src="/declaration/jquery-easyui-1.5.3/jquery.easyui.min.js"></script>



</head>

<body onload="myhide()">
		<h2>单位设置页面</h2>

		<div style="margin:20px 0;"></div>
		<div class="easyui-layout" style="width:100%;height:700px;">
			<!--左框架 -->
			<div data-options="region:'west',split:true" title="West" style="width:20%;height: 700px;">
			<ul id="tree_nav"></ul>
			</div>
<!--右边内容-->
			<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'" style="height: 700px;">

				<!--图标-->
				<div id="tb" style="padding:5px;height:auto">
					<div style="margin-bottom:5px">
						<a id="btn_add" href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加分类</a>
						<a id="btn_update" href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改分类</a>
						<!--<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>-->
						<a id="btn_delete" href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除分类</a>
					</div>
						<div style="padding:10px 60px 20px 60px">
							<form id="ff" method="post" action="/declaration/region/insertRegion.do" >
								<input type="hidden" id="hideId" name="hideId"/>
								<table cellpadding="5">
									<tr id="select_type">
										<td>添加类别:</td>
										<td>
											<select id="type" name="table" onchange="choseType()">
												<option value="">请选择..</option>
												<option value="tb_province">省 </option>
												<option value="tb_city">市 </option>		
												<option value="tb_county">县 </option>												
											</select>
										</td>
									</tr>
									<tr id="province">
										<td>省名:</td>
										<td><input id="ptext" class="easyui-textbox" type="text" name="province_name" data-options="required:true"></input>
										</td>
									</tr>
									<tr id="p_select">
										<td>省名:</td>
										<td>
											<select id="province_id" name="province_id" onchange="choseCity()">
											</select>
										</td>
									</tr>
									<tr id="city">
										<td>市名:</td>
										<td><input id="ctext" class="easyui-textbox" type="text" name="city_name" data-options="required:true"></input>
										</td>
									</tr>
									<tr id="c_select">
										<td>市名:</td>
										<td>
											<select id="city_id" name="city_id">
											</select>
										</td>
									</tr>
									<tr id="county">
										<td>县名:</td>
										<td><input id="cctext" class="easyui-textbox" type="text" name="county_name" data-options="required:true"></input>
										</td>
									</tr>
								</table>
							</form>
							<div style="text-align:left;padding:5px">
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确定</a>
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重写</a>
							</div>
						</div>
					
					
					
					
					<script>
					/* function myhide(){
						$("#tree_nav").tree({
							url:"/declaration/region/regionTree.do",
						
						}); */
						function myhide(){
							$("#province").hide();
							$("#p_select").hide();
							$("#city").hide();
							$("#c_select").hide();
							$("#county").hide();
							$("#tree_nav").tree({
								url:"/declaration/region/regionTree.do",
									onClick:function(node){
										$("#hideId").val(node.id);										
										if("e"==node.id[2]){
											$.ajax({
												type:"get",
												url:"/declaration/region/getProvince.do",
												dataType:"json",
												data:{"province_id":node.id},
												success:function(result){
													$('#ptext').textbox({
														"value":result[0].province_name,
														"readonly":true
													})	
													$("#province").show();
													$("#select_type").hide();
													$("#type").val("tb_province");
													console.log($("#type").val());
													$("#p_select").hide();
													$("#city").hide();
													$("#c_select").hide();
													$("#county").hide(); 
													
												}
											});
										}
										if("i"==node.id[2]){
											$.ajax({
												type:"get",
												url:"/declaration/region/getCity.do",
												dataType:"json",
												data:{"city_id":node.id},
												success:function(result){
													$('#ctext').textbox({
														"value":result[0].city_name,
														"readonly":true
													})	
													$("#province").hide();
													$("#select_type").hide();
													$("#type").val("tb_city");
													console.log($("#type").val());
													$("#p_select").hide();
													$("#city").show();
													$("#c_select").hide();
													$("#county").hide(); 
													
												}
											});
										}
										if("a"==node.id[2]){
											$.ajax({
												type:"get",
												url:"/declaration/region/getCounty.do",
												dataType:"json",
												data:{"county_id":node.id},
												success:function(result){
													$('#cctext').textbox({
														"value":result[0].county_name,
														"readonly":true
													})	
													$("#province").hide();
													$("#select_type").hide();
													$("#type").val("tb_county");
													console.log($("#type").val()); 
													$("#p_select").hide();
													$("#city").hide();
													$("#c_select").hide();
													$("#county").show(); 
													
												}
											});
										}
									}
							})
						
						}
						function submitForm() {
							$('#ff').submit();
						}

						function clearForm() {
							$('#ff').form('reset');
						}
						function select_s(){
							$("#province").show();
							$("#p_select").hide();
							$("#city").hide();
							$("#c_select").hide();
							$("#county").hide();
						}
						function select_ss(){
							$("#province").hide();
							$("#p_select").show();
							$("#city").show();
							$("#c_select").hide();
							$("#county").hide();
							choseProvince()
						}
						function select_x(){
							$("#province").hide();
							$("#p_select").show();
							$("#city").hide();
							$("#c_select").show();
							$("#county").show();
							choseProvince()
						}
						function no_select(){
							$("#province").hide();
							$("#p_select").hide();
							$("#city").hide();
							$("#c_select").hide();
							$("#county").hide();
						}
						function choseType(){
							var type = $("#type").val();
							if("tb_province"==type){
								select_s();
							}
							if("tb_city"==type){
								select_ss();
							}
							if("tb_county"==type){
								select_x();
							}
							if(""==type||type==null){
								no_select();
							}
						}
						function choseProvince(){
							$("#province_id").empty();
							$("#province_id").append("<option value=''>请选择</option>")
							$.ajax({
								type:"get",
								url:"/declaration/region/getProvince.do",
								success:function(result){
									for(var i=0;i<result.length;i++){
										var json = result[i];
										$("#province_id").append("<option value='"+json.province_id+"'>"+json.province_name+" </option>")	
									}
								}
							});
						}
						function choseCity(){
							$("#city_id").empty();
							$("#city_id").append("<option value=''>请选择</option>")
							$.ajax({
								type:"get",
								url:"/declaration/region/getCity.do?province_id="+$("#province_id").val(),
								success:function(result){
									for(var i=0;i<result.length;i++){
										var json = result[i];
										$("#city_id").append("<option value='"+json.city_id+"'>"+json.city_name+" </option>")	
									}
								}
							});
						}
					$("#btn_add").click(function(){
						$("input[type=text]").textbox({
							"value":"",
							"readonly":false
						});
						$('#ff').form('reset');
						$("#select_type").show();
						$("#ff").attr("action","/declaration/region/insertRegion.do")
						no_select();
					})
					$("#btn_update").click(function(){
						$("input[type=text]").textbox({
							"readonly":false
						});
						$("#ff").attr("action","/declaration/region/update.do")
						console.log($("#ff").attr("action"))
					})
					$("#btn_delete").click(function(){
						$("input[type=text]").textbox({
							"readonly":true
						});
						$("#ff").attr("action","/declaration/region/delete.do")
					})
					</script>

				</div>

	</body>
</html>
