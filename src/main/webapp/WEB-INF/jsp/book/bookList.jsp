<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>图书管理</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/view.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/admin.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style2.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/book/bookTypes.js"></script>
    <style type="text/css">
        .layui-form-item {
            margin-bottom: 0;
        }
    </style>
</head>
<body class="layui-view-body">
<div class="layui-content">
    <!--面包屑导航-->
    <div class="mianb">
        <div class="mblf layui-col-xs6 layui-col-md6">
            <p>图书管理 > <span>图书管理</span></p>
        </div>
        <div class="mbrt layui-col-xs6 layui-col-md6">
            <a href="${pageContext.request.contextPath}/book/addbook.html" class="layui-btn layui-btn-normal">添加图书</a>
        </div>
    </div>
    <!--面包屑导航-->
    <div class="layui-row">
        <div class="layui-card">
            <div class="sortbox layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">类型</label>
                    <form action="${pageContext.request.contextPath}/book/booklist" method="post">
                        <div class="layui-input-inline">
                            <select name="interest" lay-filter="aihao">
                                <option value="0">--请选择--</option>
                                <option value="1">古典</option>
                                <option value="2">历史</option>
                                <option value="3">奇幻</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <input type="text" class="form-control" name="bookName" placeholder="图书姓名" aria-describedby="basic-addon1">
                            <input type="text" class="form-control" name="bookAuthor" placeholder="作者名字" aria-describedby="basic-addon1">
                        </div>
                        <input type="submit" class="layui-btn  layui-btn-xs" value="查看">
                    </form>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/book/deleteBook.html" method="post">
                <a href="${pageContext.request.contextPath}/book/booklist" class="layui-btn  layui-btn-xs">查询全部</a>
                <input type="submit" class="layui-btn  layui-btn-xs" value="批量删除">
<%--                <div>--%>
<%--                    &lt;%&ndash;                <input type="hidden" value="" id="tid" />&ndash;%&gt;--%>
<%--                    <select name="type" id="type"></select>--%>
<%--                    <font color="red"></font>--%>
<%--                </div>--%>
                <div class="table-responsive">
                    <table class="layui-table" lay-skin="line" lay-size="lg" id="table">
                        <thead>
                        <tr>
                            <th class="layui-form">
                            </th>
                            <th>图书名称</th>
                            <th>图书作者</th>
                            <th>图书价格</th>
                            <th>图书类型</th>
                            <th>生产时间</th>
                            <th>图书详情</th>
                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="book" items="${pageInfo.list}">
                            <tr>
                                <td class="layui-form">
                                    <input type="checkbox" name="ids" value="${book.id}" lay-skin="primary" title="">
                                </td>
                                <td>${book.bookName}</td>
                                <td>${book.bookAuthor}</td>
                                <td>${book.bookPrice}</td>
                                <td>${book.type}</td>
                                <td>
                                    <fmt:formatDate value="${book.bookDate}" pattern="yyyy/MM/dd"/>
                                </td>
                                <td>${book.bookDetails}</td>
                                <td>
                                    <div class="layui-table-cell laytable-cell-1-0-10">
                                        <a href="${pageContext.request.contextPath}/book/xinxi.html?id=${book.id}"
                                           class="layui-btn  layui-btn-xs">查看</a>
                                        <a href="${pageContext.request.contextPath}/book/update.html?id=${book.id}"
                                           class="layui-btn layui-btn-normal layui-btn-xs">修改</a>
                                        <a href="${pageContext.request.contextPath}/book/deleteBook.html?ids=${book.id}"
                                           class="layui-btn layui-btn-danger layui-btn-xs delete">删除</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
        <%--分页查询--%>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link">共${pageInfo.pages}页</a></li>
                <li class="page-item"><a class="page-link">当前为第${pageInfo.pageNum}页</a></li>
                <li class="page-item">
                    <a class="page-link"
                       href="${pageContext.request.contextPath}/book/booklist?page=1&size=${pageInfo.pageSize}"
                       aria-label="Previous">
                        <span aria-hidden="true">首页</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link"
                       href="${pageContext.request.contextPath}/book/booklist?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}"
                       aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                    <li class="page-item"><a
                            href="${pageContext.request.contextPath}/book/booklist?page=${pageNum}&size=${pageInfo.pageSize}"
                            class="page-link">${pageNum}</a></li>
                </c:forEach>
                <li class="page-item">
                    <a class="page-link"
                       href="${pageContext.request.contextPath}/book/booklist?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}"
                       aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link"
                       href="${pageContext.request.contextPath}/book/booklist?page=${pageInfo.pages}&size=${pageInfo.pageSize}"
                       aria-label="Previous">
                        <span aria-hidden="true">尾页</span>
                    </a>
                </li>
                <li class="page-item">
                    <form action="${pageContext.request.contextPath}/book/booklist" method="post">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="submit">Go!</button>
                                    </span>
                                    <input type="text" name="page" class="form-control" placeholder="转到第...页">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <input type="text" name="size" class="form-control" placeholder="每页显示条数">
                                    <span class="input-group-btn">
                                         <button class="btn btn-default" type="submit">Go!</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </form>
                </li>
            </ul>
        </nav>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/layui.all.js"></script>
<script>
    var element = layui.element;
    layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage
            , layer = layui.layer;

        //页码完整功能
        laypage.render({
            elem: 'page'
            , count: 100
            , layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
            , jump: function (obj) {
                console.log(obj)
            }
        });
    });

    //弹框

    //判断弹框
    // $(".delete").click(function(){
    //     layer.confirm('确定要删除该职位信息？', {
    //         btn: ['是','否'] //按钮
    //     }, function(){
    //         layer.msg('已删除', {icon: 1});
    //     }, function(){
    //         layer.msg('已取消',  {icon: 2});
    //     });
    // })
    //
    // layui.use('form', function(){
    //     var form = layui.form;
    //     form.render();
    // });
    window.onload = function () {
        $(".delete").click(function () {
            if (!confirm("是否确认删除")) {
                return false
            }
        })
    }
</script>

</body>
</html>