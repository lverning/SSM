<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    </script>
</head>
<body>
<table class="providerTable" cellpadding="0" cellspacing="0">
    <tr class="firstTr">
        <th width="10%">图书名字</th>
        <th width="20%">作者</th>
        <th width="10%">价格</th>
        <th width="10%">类型</th>
        <th width="10%">生产日期</th>
    </tr>
    <c:forEach var="book" items="${bookList}">
        <tr>
            <td>
                <span>${book.bookName }</span>
            </td>
            <td>
                <span>${book.bookAuthor }</span>
            </td>
            <td>
                <span>${book.bookPrice}</span>
            </td>
            <td>
                <span>${book.bookType}</span>
            </td>
            <td>
                <span>${book.bookDate}</span>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
