<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/admin.css">
    <title>管理后台</title>
</head>
<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header custom-header">            
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item slide-sidebar" lay-unselect>
                    <a href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
                </li>               
            </ul>
			<p class="datexians">图书后台管理项目</p>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/user/break">退出</a>
                </li>
            </ul>
        </div>
        <div class="layui-side custom-admin">
            <div class="layui-side-scroll">
                <div class="custom-logo">
                    <h1>图书管理系统</h1>
                </div>
                <ul id="Nav" class="layui-nav layui-nav-tree">
                    <li class="layui-nav-item">
                        </a>
<%--                            <a href="xinxi.jsp">图书详情</a>--%>
                            <a href="${pageContext.request.contextPath}/book/addbook.html">添加图书</a>
                            <a href="${pageContext.request.contextPath}/book/booklist">图书列表</a>
                    </li>
                </ul>
        </div>
        <div class="layui-footer">
            <p>项目集01(图书项目)</p>
        </div>
        <div class="mobile-mask"></div>
    </div>
    <script src="${pageContext.request.contextPath}/statics/js/layui.all.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/index.js"></script>
</body>
</html>