function userNamea() {
    $.post({
        url: "${pageContext.request.contextPath}/user/userLogin",
        data: {"userName": $("#userName").val()},
        success: function (data) {
            if (data.toString()==='ok'){
                $("#userNameInfo").css("color","green")
            }
            $("#userNameInfo").html(data);
        }
    })
}