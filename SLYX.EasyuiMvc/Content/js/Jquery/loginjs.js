function Login() {

        $.ajax({
            url: "/User/CheckLogin",
            type: "post",
            success: function (data) {
                
                if (data.Statu == "ok") {
                    window.location.href = "/Home/Index";
                }
                else {
                    $.messager.alert("系统提示", "登录失败", "warning");
                    return;
                }
            }
        })
}