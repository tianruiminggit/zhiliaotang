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

	<body>
		<h2>单位设置页面</h2>

		<div style="margin:20px 0;"></div>
		<div class="easyui-layout" style="width:1500px;height:700px;">
			<!--左框架 -->
			<div data-options="region:'west',split:true" title="West" style="width:200px;height: 700px;">
				左边导航栏
				<div class="easyui-panel" style="padding:5px;height: 700px;">
					<ul class="easyui-tree">
						<li>
							<span>参数设置</span>
							<ul>
								<li data-options="state:'closed'">
									<span>分类</span>
									<ul>
										<li>
											<span>培训及项目管理</span>
										</li>
										<li>
											<span>财政补贴</span>						
										</li>
										<li>
											<span>社会事业</span>
											<ul>
												<li>
													<span>教育</span>
												<ul>
													<li>广播电视</li>
													<li>科技文化</li>
													<li>卫生</li>
												</ul>
												</li>
											</ul>				
										</li>
										<li>
											<span>基础设施</span>
											<ul>
												<li>其他</li>
												<li>住房解困</li>
												<li>乡村路桥</li>
												<li>乡村能源</li>
												<li>水利设施</li>
												<li>农牧林业</li>
											</ul>
										</li>
									</ul>
								</li>
								
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
							<form id="ff" method="post">
								<table cellpadding="5">
									<tr>
										<td>添加位置:</td>
										<td>
											<select class="easyui-combobox" name="language">
												<option value="ar">Arabic</option>
												<option value="bg">Bulgarian</option>		
												<option value="ru">Russian</option>												
											</select>
										</td>
									</tr>
									<tr>
										<td>添加位置:</td>
										<td><input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
										</td>
									</tr>
									<tr>
										<td>显示顺序:</td>
										<td><input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></input>
										</td>
									</tr>
									<tr>
										<td>分类名称:</td>
										<td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
										</td>
									</tr>
									<tr>
										<td>路径目标:</td>
										<td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
										</td>
									</tr>
									<tr>
										<td>代码:</td>
										<td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
										</td>
									</tr>
									<!--<tr>
										<td>Message:</td>
										<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
										</td>
									</tr>-->
									
								</table>
							</form>
							<div style="text-align:left;padding:5px">
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">添加分类</a>
								<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重写</a>
							</div>
						</div>
					
					
					
					
					<script>
						function submitForm() {
							$('#ff').form('submit');
						}

						function clearForm() {
							$('#ff').form('clear');
						}
					</script>

				</div>

	</body>

</html>