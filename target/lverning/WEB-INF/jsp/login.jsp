<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.min.js"></script>
    <script>
        function login() {
            $.post({
                url: "${pageContext.request.contextPath}/user/userAJAX",
                data: {"userName": $("#userName").val()},
                success: function (data) {
                    if (data.toString()==='OK'){
                        $("#userNameInfo").css("color","green")
                    }else {
                        $("#userNameInfo").css("color","red")
                    }
                    $("#userNameInfo").html(data);
                }
            })
        }
    </script>
</head>

<body>
<div class="content">
    <div class="form sign-in">
        <form action="${pageContext.request.contextPath}/user/userLogin" method="post">
            <h2>欢迎回来</h2>
            <label>
                <span>姓名</span>
                <input type="text" name="userName" id="userName" onblur="login()"/>
                <span id="userNameInfo"></span>
            </label>
            <label>
                <span>密码</span>
                <input type="password" name="password" id="password" onblur="login()"/>
                <span id="passwordInfo"></span>
            </label>
            <p class="forgot-pass"><a href="javascript:">忘记密码？</a></p>
            <button type="submit" class="submit">登 录</button>
            <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号登录</button>
        </form>
    </div>
    <div class="sub-cont">
        <div class="img">
            <div class="img__text m--up">
                <h2>还未注册？</h2>
                <p>立即注册，发现大量机会！</p>
            </div>
            <div class="img__text m--in">
                <h2>已有帐号？</h2>
                <p>有帐号就登录吧，好久不见了！</p>
            </div>
            <div class="img__btn">
                <span class="m--up">注 册</span>
                <span class="m--in">登 录</span>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/user/insertUser">
            <div class="form sign-up">
                <h2>立即注册</h2>
                <label>
                    <span>用户名</span>
                    <div class="info">${error}</div>
                    <input type="text" name="userName" required/>
                </label>
                <label>
                    <span>密码</span>
                    <input type="password" name="password" required/>
                </label>
                <label>
                    <span>邮箱</span>
                    <input type="email" name="email" required/>
                </label>
                <button type="submit" class="submit">注 册</button>
                <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号注册</button>
            </div>
        </form>
    </div>
</div>
<script src="${pageContext.request.contextPath }/statics/js/js1.js"></script>
</body>
</html>
