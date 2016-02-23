/**
 * Created by root on 16-2-22.
 */
var funcs = {
    startDateTime: null,
    endDateTime: null,
    inintEvent: function () {
        funcs.bindTaskType();
    },
    bindTaskType: function () {
        $.ajax({
            type: "POST",
            url: "task/tasktype.do",
            dataType: "json",
            async: false,
            /*data: {
                blankTopictblID: blankTopictblID,
                ignoreFlag: true
            },*/
            success: function (data) {
                if (data.success) {
                    console.log(data);
                }
                else {
                    $.alert({
                        title: '信息提示',
                        content: '请重新尝试!',
                        confirmButton: "确定",
                        confirm: function () {
                            return;
                        }
                    });
                }
            }
        });
    }


}


$().ready(function () {
    funcs.inintEvent();
});

