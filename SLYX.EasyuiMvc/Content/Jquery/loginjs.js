
//回车键提交
function KeyLogin() {
    if (window.event.keyCode == 13)  //回车键的键值为13
    {
        Login();
    }
}
var p = 0;
var t;
var w = 300;
function startProcess() {
    if (p==0) {
        $('#myModal1').modal('show');
    }
    
    $("#proBar").css("width", p + "%");
    if (p<101) {
        p = p + 20;
    }
    
    t = setInterval("startProcess()", 1000);

}
function stopProcess() {
    p = 0;
    $('#myModal1').modal('hide');
    $("#proBar").css("width", p + "%");
    setTimeout("$('#proBar').css('width', p + '%')", p);
    clearTimeout(t);
    clearInterval();
}
//异步实现用户的登录
function Login() {
    $("#errMsg").html("");
    //startProcess();
    //验证用户必须输入必填项
    //var validate = $("#ff").form("validate");
    //if (validate == false) {

    //    return false;
    //}
    var uName=$("#UserName").val();
    var uPwd = $("#Password").val();
    var vcode = $("#VCode").val();
    var checkpwd = $("#isAllway").get(0).checked;
    if (uName == "" || uPwd == "") {
        //stopProcess();
        //setTimeout("stopProcess()", 5000);
        //$.messager.alert("系统提示", "登录失败，用户名或密码不能为空！");
        $("#errMsg").html("登录失败，用户名或密码不能为空！");
        
        return false;
    }
//progressBar("");
    //ajax提交
    $.ajax({
        url: "/Login/Login",
        type: "POST",
        dataType: "json",
        data: { "UserName": $("#UserName").val(), "Password": $("#Password").val(), "VCode": $("#VCode").val(), "isAllway": checkpwd },
        success: function (data) {
            if (data.Statu == "ok") {
                //progressBar("close");
                //stopProcess();
                window.location.href = data.BackUrl;
            }
            else {
                //progressBar("close");
                //$.messager.alert("系统提示", data.Msg, "error");
                $("#errMsg").html(data.Msg);
                return;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            $.messager.alert("系统提示", errorThrown.message + "\r\n" + errorThrown.stack, "error");
            return;
        }
        //,
        //beforeSend: function (data) {
        //    progressBar("");
        //}
        //,
        //complete: function (data) {
        //    progressBar("close");
        //}
    });
}
function progressBar(obj) {
    //if (obj=="") {
    //    $.messager.progress({
    //        //title: '登录',
    //        //msg: '正在登录...',
    //        text: '正在登录...'
    //    });
    //}
    //else {
    //    $.messager.progress('close');
    //}
}

//单击重新改变验证码
function ClickRemoveChangeCode() {
    //首先我们获取到验证码的路径
    var code = $("#codeImg").attr("src");
    code = code.substring(0, code.indexOf("?")+1);
    var r = Math.random().toString();
    code += r;
    //然后重新给验证码的路径赋值
    $("#codeImg").attr("src", code);

}