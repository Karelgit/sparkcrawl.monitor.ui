/**
 * Created by root on 16-2-19.
 */
var user = {

    userFunction : {
        loginFormValidate : function() {
            $("#loginForm").validate({
                submitHandler : function(form) {
                    form.submit();
                },
                rules: {
                    uname: {
                        required: true,
                    },
                    upwd: {
                        required: true,
                        maxlength: 12,
                        minlength: 6
                    }
                },
                messages: {
                    uname: {
                        required: "不可为空",
                    },
                    upwd: {
                        required: "不可为空",
                        maxlength: "密码超过长度",
                        minlength: "密码长度不够"
                    }
                }
            });
        }
    }
};

$().ready(function() {
    user.userFunction.loginFormValidate();
});
