<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
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

<body onload="init()">
	<h1 align="center">项目申报表</h1>
	<div class="easyui-panel" title="项目申报填写表" style="width: 100%">
		<div style="padding: 10px 60px 20px 60px">
			<form method="post" id="myform" action="/declaration/declar/insert.do">
				<table cellpadding="5" style="margin: 0 auto" border="2">
					<tr>
						<td>选择地区:</td>
						<td>
							<select name="declar_province" id="province" onchange="initCity()">
								
							</select> 
							<select name="declar_city" id="city" onchange="initCounty()">
								
							</select> 
							<select name="declar_county" id="county">
								
							</select>
						</td>
					</tr>
					<tr>
						<td>选择类别:</td>
						<td><select  id="project" onchange="initChild()">
								
						</select> <select name="child_id" id="kindchild">
								
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
							class="easyui-textbox" type="text" 
							data-options="readonly:true"></input>
						</td>
					</tr>
					<tr>
						<td>推荐文件号:</td>
						<td><input class="easyui-textbox" type="text"
							name="tuijianfile" data-options="required:true"></input></td>
					</tr>
					<tr>
			    		<td>项目概述:</td>
			    		<td><input class="easyui-textbox" name="declar_context" data-options="multiline:true,required:true" style="height:60px"></input></td>
	    			</tr>
				</table>
				<div style="text-align: center; padding: 5px">
					<a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="submitForm()">提交</a> <a href="javascript:void(0)"
						class="easyui-linkbutton" onclick="clearForm()">取消</a>
				</div>
			</form>
		</div>
	</div>
	
	<script>
	function submitForm(){
		$("#myform").submit()
	}
		function init(){
			initProvince();
			chashangji();
		}
		function initProvince(){
			$.ajax({
				type:"get",
				url:"/declaration/region/getProvince.do",
				success:function(result){
					$("#province").append("<option value=''>请选择</option>")
					for(var i=0;i<result.length;i++){
						var json = result[i];
						$("#province").append("<option value='"+json.province_name+"'>"+json.province_name+" </option>")	
					}
				}				
			})
		}
		
		function initCity(){
			$("#city").empty();
			$("#city").append("<option value=''>请选择</option>")
			$.ajax({
				type:"get",
				url:"/declaration/region/getCity.do?province_id="+$("#province").val(),
				success:function(result){
					for(var i=0;i<result.length;i++){
						var json = result[i];
						$("#city").append("<option value='"+json.city_name+"'>"+json.city_name+" </option>")	
					}
				}				
			})
		}
		function initCounty(){
			$("#county").empty();
			$("#county").append("<option value=''>请选择</option>")
			$.ajax({
				type:"get",
				url:"/declaration/region/getCounty.do?city_id="+$("#city").val(),
				success:function(result){
					for(var i=0;i<result.length;i++){
						var json = result[i];
						$("#county").append("<option value='"+json.county_name+"'>"+json.county_name+" </option>")	
					}
				}				
			})
		}
		
		function chashangji(){
			$("#project").append("<option value=''>--请选择--</option>");
			$.ajax({
				type:"get",
				url:"/declaration/projectKindController/selectprojectkind.do",
				success:function(result){
					for(var i=0;i<result.length;i++){
						var json = result[i];
						$("#project").append("<option value=" + json.kind_name+">"+json.kind_name+"</option");
					}
				}
			});
			
		}
		function initChild(){
			$("#kindchild").empty();
			$("#kindchild").append("<option value=''>--请选择--</option>");
			$.ajax({
				type:"get",
				url:"/declaration/projectKindController/selectchild.do?kind_id="+$("#project").val(),
				success:function(result){
					for(var i=0;i<result.length;i++){
						var json = result[i];
						$("#kindchild").append("<option value=" + json.child_name+">"+json.child_name+"</option");
					}
				}
			});
		}
	</script>
</body>

</html> 