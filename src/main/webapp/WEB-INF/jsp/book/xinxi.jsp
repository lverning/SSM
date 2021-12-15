<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>图书管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/view.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/admin.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style2.css"/>
    <style type="text/css">
    	.layui-elem-quote{ font-size: 18px; margin-bottom: 20px;}
    	.layui-input-block img{ max-height: 160px; width: auto;}
    </style>
</head>
<body class="layui-view-body">
    <div class="layui-content">
    	<!--面包屑导航-->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>图书管理 ><span>图书详情</span></p>
    		</div>
    	</div>
    	<!--面包屑导航-->
    	<blockquote class="layui-elem-quote">
			<a href="${pageContext.request.contextPath}/book/booklist" class="layui-btn layui-btn-normal float-right">返回</a>
			图书详情
		  <a href="${pageContext.request.contextPath}/book/update.html" class="layui-btn layui-btn-normal float-right">修改</a>
		</blockquote>
		<!--岗位标题-->
        <div class="layui-row">
            <div class="layui-card positionbox">
            	  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
					    <legend>基本信息</legend>
					</fieldset>
					<form class="layui-form" action="">
						 <div class="layui-form-item">
							    <label class="layui-form-label"><span class="col-red"></span>图书名字</label>
							    <div class="layui-input-block">
							        ${book.bookName}
							    </div>
						  </div>
						  <div class="layui-form-item">
							    <label class="layui-form-label">图书作者</label>
							    <div class="layui-input-inline">
							        ${book.bookAuthor}
							    </div>							    
						  </div>
						  <div class="layui-form-item">
							    <label class="layui-form-label">图书类型</label>
							    <div class="layui-input-block">
							       ${book.type}
							    </div>
						  </div>
						  <div class="layui-form-item">
							    <label class="layui-form-label">图书价格</label>
							    <div class="layui-input-inline">
							      ${book.bookPrice}
							    </div>							    			   
							</div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">生产日期</label>
                                <div class="layui-input-block">
									<fmt:formatDate value="${book.bookDate}" pattern="yyyy/MM/dd"/>
                                </div>						    
                          </div>
						  <div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">图书详情</label>
							    <div class="layui-input-block">
							    	${book.bookDetails}
								</div>							    
							</div>
					</form>
    </div>
    <script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/layui.all.js"></script>
    <script>   	
		layui.use('form', function(){
		  var form = layui.form; 
		  form.render();
		}); 
	</script>
	
</body>
</html>