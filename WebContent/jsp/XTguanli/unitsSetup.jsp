<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="UTF-8">
<title></title>
<!--引入easy UI框架    -->

<link rel="stylesheet" type="text/css"
	href="../../jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../../jquery-easyui-1.5.3/demo.css">
<script type="text/javascript"
	src="../../jquery-easyui-1.5.3/jquery.min.js"></script>
<script type="text/javascript"
	src="../../jquery-easyui-1.5.3/jquery.easyui.min.js"></script>



</head>

<body onload="myhide()">
		<h2>单位设置页面</h2>

		<div style="margin:20px 0;"></div>
		<div class="easyui-layout" style="width:1500px;height:700px;">
			<!--左框架 -->
			<div data-options="region:'west',split:true" title="West" style="width:200px;height: 700px;">
				左边导航栏
				<div class="easyui-panel" style="padding:5px;height: 700px;">
					<ul class="easyui-tree">
						<li>
							<span>四川省</span>
							<ul>
								<li data-options="state:'closed'">
									<span>泸州市</span>
									<ul>
										<li>
											<span>叙永县</span>
										</li>
										<li>
											<span>古蔺县</span>
										</li>
										<li>
											<span>纳溪县</span>
										</li>
									</ul>
								</li>
								<!--攀枝花市-->
								<li>
									<span>攀枝花市</span>
									<ul>
										<li>仁和县</li>
										<li>仁和县</li>
										<li>M仁和县</li>
										<li>仁和县</li>
									</ul>
								</li>
								<li>内江市</li>
								<li>自贡市</li>
								<li>宜宾市</li>
							</ul>
						</li>
					</ul>
				</div>

			</div>
<!--右边内容-->
			<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'" style="height: 700px;">

				<!--图标-->
				<div id="tb" style="padding:5px;height:auto">
					<div style="margin-bottom:5px">
						<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加分类</a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改分类</a>
						<!--<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>-->
						<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除分类</a>
					</div>

					
						<div style="padding:10px 60px 20px 60px">
							<form id="ff" method="post" ac>
								<table cellpadding="5">
									<tr>
										<td>添加类别:</td>
										<td>
											<select id="type" name="table" onchange="choseType()">
												<option value="pp">请选择..</option>
												<option value="province">省 </option>
												<option value="city">市 </option>		
												<option value="county">县 </option>												
											</select>
										</td>
									</tr>
									<tr id="province">
										<td>省名:</td>
										<td><input class="easyui-textbox" type="text" name="province_name" data-options="required:true"></input>
										</td>
									</tr>
									<tr id="p_select">
										<td>省名:</td>
										<td>
											<select id="province_id" name="province_id" onchange="choseCity()">
												<option value="pp">请选择..</option>
											</select>
										</td>
									</tr>
									<tr id="city">
										<td>市名:</td>
										<td><input class="easyui-textbox" type="text" name="province_name" data-options="required:true"></input>
										</td>
									</tr>
									<tr id="c_select">
										<td>市名:</td>
										<td>
											<select id="city_id" name="city_id">
												<option value="pp">请选择..</option>
											</select>
										</td>
									</tr>
									<tr id="county">
										<td>县名:</td>
										<td><input class="easyui-textbox" type="text" name="province_name" data-options="required:true"></input>
										</td>
									</tr>
								</table>
							</form>
							<div style="text-align:left;padding:5px">
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">添加分类</a>
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重写</a>
							</div>
						</div>
					
					
					
					
					<script>
						function myhide(){
							$("#province").hide();
							$("#p_select").hide();
							$("#city").hide();
							$("#c_select").hide();
							$("#county").hide();
						}
						function submitForm() {
							$('#ff').form('submit');
						}

						function clearForm() {
							$('#ff').form('clear');
						}
						function choseType(){
							var type = $("#type").val();
							if("province"==type){
								$("#province").show();
								$("#p_select").hide();
								$("#city").hide();
								$("#c_select").hide();
								$("#county").hide();
							}
							if("city"==type){
								$("#province").hide();
								$("#p_select").show();
								$("#city").show();
								$("#c_select").hide();
								$("#county").hide();
								choseProvince()
							}
							if("county"==type){
								$("#province").hide();
								$("#p_select").show();
								$("#city").hide();
								$("#c_select").show();
								$("#county").show();
								choseProvince()
							}
							if("pp"==type||type==null){
								$("#province").hide();
								$("#p_select").hide();
								$("#city").hide();
								$("#c_select").hide();
								$("#county").hide();
							}
						}
						function choseProvince(){
							$.ajax({
								type:"get",
								url:"../../region/getProvince.do",
								success:function(result){
									for(var i=0;i<result.length;i++){
										var json = result[i];
										$("#province_id").append("<option value='"+json.province_id+"'>"+json.province_name+" </option>")	
									}
								}
							});
						}
						function choseCity(){
							$.ajax({
								type:"get",
								url:"",
								success:function(result){
									$("#city_id").append("<option value='province'>阿斯達 </option>")
								}
							});
						}
					</script>

				</div>

	</body>
</html>