<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>发布职位1</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/view.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/admin.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style2.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/book/bookTypes.js"></script>
</head>
<body class="layui-view-body">
    <div class="layui-content">
    	<!--面包屑导航-->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>图书管理 > 添加图书 > <span>填写图书信息</span></p>
			</div>
			<a href="${pageContext.request.contextPath}/book/booklist" class="layui-btn layui-btn-normal float-right">返回</a>
		</div>
    	<!--面包屑导航-->
    	<div class="layui-row layui-col-space5 linarrow">
		    <div class="layui-col-md4 linitem">
		      <div class="grid-demo active">1.填写图书信息</div>
		    </div>
		    
		</div>
		<!--指示条-->
        <div class="layui-row">        	
            <div class="layui-card positionbox">            	  
				    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
					    <legend>基本信息</legend>
					</fieldset>
					<form class="layui-form" method="post" action="${pageContext.request.contextPath}/book/addbooks.html">
						 <div class="layui-form-item">
							    <label class="layui-form-label"><span class="col-red"></span>图书名字</label>
							    <div class="layui-input-block">
							      <input type="text" name="bookName" lay-verify="title" autocomplete="off" placeholder="请输入图书名字" class="layui-input">
							    </div>
						  </div>
						<div class="layui-form-item">
							<label class="layui-form-label"><span class="col-red"></span>图书作者</label>
							<div class="layui-input-block">
								<input type="text" name="bookAuthor" lay-verify="title" autocomplete="off" placeholder="请输入图书作者" class="layui-input">
							</div>
						</div>
						  <div class="layui-form-item">
							    <label class="layui-form-label">图书类型</label>
							    <div class="layui-input-block">
							      <select name="bookType" lay-filter="aihao">
							        <option value="1">古典</option>
							        <option value="2">历史</option>
							        <option value="3">奇幻</option>
							      </select>
							    </div>
						  </div>
						<div class="layui-form-item">
							<label class="layui-form-label"><span class="col-red"></span>图书价格</label>
							<div class="layui-input-block">
								<input type="text" name="bookPrice" lay-verify="title" autocomplete="off" placeholder="请输入图书价格" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"><span class="col-red"></span>生产日期</label>
							<div class="layui-input-block">
								<input type="date" name="bookDate" lay-verify="title" autocomplete="off" placeholder="请输入生产日期" class="layui-input">
							</div>
						</div>
						  <div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">图书描述</label>
							    <div class="layui-input-block">
							    	 <textarea name="bookDetails" id="demo" style="display: none;"></textarea>
							    </div>
							</div>
						<div class="mbrt layui-col-xs6 layui-col-md6">
							<input type="submit" class="layui-btn layui-btn-normal" value="发布图书">
						</div>
					</form>
					
    </div>
    <script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/layui.all.js"></script>
    <script>
	layui.use('layedit', function(){
	  var layedit = layui.layedit;
	  layedit.build('demo'); //建立编辑器
	});
	layui.use('layedit', function(){
	  var layedit = layui.layedit;
	  layedit.build('demo2'); //建立编辑器
	});	
	</script>
</body>
</html>