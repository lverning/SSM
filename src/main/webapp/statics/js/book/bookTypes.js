var type = null;
$(function (){
    type = $("#type");
    $.ajax({
        type:"post",//请求类型
        url:path+"/type/getTypeList.html",//请求的url
        data:{},//请求参数
        dataType:"json",//ajax接口（请求url）返回的数据类型
        success:function(data){//data：返回数据（json对象）
            if(data != null){
                type.html("");
                var options = "<option value=\"0\">请选择</option>";
                for(var i = 0; i < data.length; i++){
                    options += "<option value=\""+data[i].id+"\">"+data[i].type+"</option>";
                }
                type.html(options);
            }
        },
        error:function(data){//当访问时候，404，500 等非200的错误状态码
            validateTip(userRole.next(),{"color":"red"},imgNo+" 获取用户角色列表error",false);
        }
    });
})