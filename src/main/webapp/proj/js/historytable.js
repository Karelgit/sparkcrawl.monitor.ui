/**
 * Created by root on 16-2-29.
 */
var historyview = {
    pageNow: 1,
    pageNum: 1,
    pageSize: 10,
    paging: function () {
        var str = "";
        str = "<ul class='pagination pull-right'>";
        if (historyview.pageNum < 6 && historyview.pageNum > 0) {
            if (historyview.pageNow != 1) {
                str += "<li><a href='javascript:historyview.previousPage()'><i class='fa fa-chevron-left'></i></a></li>";
            } else {
                str += "<li class='disabled'><a><i class='fa fa-chevron-left'></i></a></li>";
            }
            for (var i = 1; i <= historyview.pageNum; i++) {
                if (i == historyview.pageNow) {
                    str += "<li class='active'><a>" + i + "</a></li>";
                } else {
                    str += "<li><a href='javascript:historyview.jumpPage(" + i + ")'>" + i + "</a></li>";
                }
            }
            if (historyview.pageNow != historyview.pageNum) {
                str += "<li><a href='javascript:historyview.nextPage()'><i class='fa fa-chevron-right'></i></a></li>";
            } else {
                str += "<li class='disabled'><a><i class='fa fa-chevron-right'></i></a></li>";
            }
        } else if (historyview.pageNum >= 6) {
            if (historyview.pageNow < 4) {
                if (historyview.pageNow != 1) {
                    str += "<li><a href='javascript:historyview.previousPage()'><i class='fa fa-chevron-left'></i></a></li>";
                } else {
                    str += "<li class='disabled'><a><i class='fa fa-chevron-left'></i></a></li>";
                }
                str += "<li class='invisible'><a></a></li>";
                for (var i = 1; i < 4; i++) {
                    if (i == historyview.pageNow) {
                        str += "<li class='active'><a>" + i + "</a></li>";
                    } else {
                        str += "<li><a href='javascript:historyview.jumpPage(" + i + ")'>" + i + "</a></li>";
                    }
                }
                str += "<li class='disabled'><a>…</a></li>" +
                    "<li><a href='javascript:historyview.jumpPage(" + historyview.pageNum + ")'>" + historyview.pageNum + "</a></li>" +
                    "<li class='invisible'><a></a></li>" +
                    "<li><a href='javascript:historyview.nextPage()'><i class='fa fa-chevron-right'></i></a></li>";
            } else if ((historyview.pageNum - historyview.pageNow) < 3) {
                str += "<li><a href='javascript:historyview.previousPage()'><i class='fa fa-chevron-left'></i></a></li>" +
                    "<li class='invisible'><a></a></li>" +
                    "<li><a href='javascript:historyview.jumpPage(" + 1 + ")'>" + 1 + "</a></li>" +
                    "<li class='disabled'><a>…</a></li>";
                for (var i = historyview.pageNum - 2; i <= historyview.pageNum; i++) {
                    if (i == historyview.pageNow) {
                        str += "<li class='active'><a>" + i + "</a></li>";
                    } else {
                        str += "<li><a href='javascript:historyview.jumpPage(" + i + ")'>" + i + "</a></li>";
                    }
                }
                str += "<li class='invisible'><a></a></li>";
                if (historyview.pageNow != historyview.pageNum) {
                    str += "<li><a href='javascript:historyview.nextPage()'><i class='fa fa-chevron-right'></i></a></li>";
                } else {
                    str += "<li class='disabled'><a><i class='fa fa-chevron-right'></i></a></li>";
                }
            } else {
                str += "<li><a href='javascript:historyview.previousPage()'><i class='fa fa-chevron-left'></i></a></li>" +
                    "<li><a href='javascript:historyview.jumpPage(" + 1 + ")'>" + 1 + "</a></li>" +
                    "<li class='disabled'><a>…</a></li>" +
                    "<li><a href='javascript:historyview.jumpPage(" + (historyview.pageNow - 1) + ")'>" + (historyview.pageNow - 1) + "</a></li>" +
                    "<li class='active'><a>" + historyview.pageNow + "</a></li>" +
                    "<li><a href='javascript:historyview.jumpPage(" + (historyview.pageNow + 1) + ")'>" + (historyview.pageNow + 1) + "</a></li>" +
                    "<li class='disabled'><a>…</a></li>" +
                    "<li><a href='javascript:historyview.jumpPage(" + historyview.pageNum + ")'>" + historyview.pageNum + "</a></li>" +
                    "<li><a href='javascript:historyview.nextPage()'><i class='fa fa-chevron-right'></i></a></li>";

            }
        }
        str += "</ul>";
        return str;
    },
    initPage: function () {
        historyview.pageNow = 1;

        historyview.pageNum = 1;
    },
    previousPage: function () {
        if (historyview.pageNow > 1) {

            historyview.pageNow--;

            //query();
            var search;
            if (historyview.getPageNo() == 0) {
                search = {
                    name: $("#tasknameInput").val(),
                    starttime: startDateTime,
                    endtime: endDateTime,
                    pageNo: historyview.getPageNo(),
                    pageSize: historyview.getPageSize()
                }
                ;
            }

            else
                search = {
                    name: $("#tasknameInput").val(),
                    starttime: startDateTime,
                    endtime: endDateTime,
                    pageNo: historyview.getPageNo() + historyview.getPageSize() - 1,
                    pageSize: historyview.getPageSize()
                };
            console.log(historyview.getPage());
            funcs.query(search);
        }
    },
    nextPage: function () {
        if (historyview.pageNow < historyview.pageNum) {

            historyview.pageNow++;
            var search = {
                name: $("#tasknameInput").val(),
                starttime: startDateTime,
                endtime: endDateTime,
                pageNo: historyview.getPageNo() + historyview.getPageSize() - 1,
                pageSize: historyview.getPageSize()
            };
            console.log(historyview.getPage());
            funcs.query(search);

        }
    },
    jumpPage: function (i) {
        if (i > 0 && i <= historyview.pageNum) {

            historyview.pageNow = i;

            var search;

            if (historyview.pageNow == 1) {
                search = {
                    name: $("#tasknameInput").val(),
                    starttime: startDateTime,
                    endtime: endDateTime,
                    pageNo: historyview.getPageNo(),
                    pageSize: historyview.getPageSize()
                };
            } else
                search = {
                    name: $("#tasknameInput").val(),
                    starttime: startDateTime,
                    endtime: endDateTime,
                    pageNo: historyview.getPageNo() + historyview.getPageSize() - 1,
                    pageSize: historyview.getPageSize()
                };
            console.log(historyview.getPage());
            funcs.query(search);

        }
    },
    totalPage: function (i) {
        if (i != 0) {

            if (i % historyview.pageSize == 0) {

                historyview.pageNum = i / historyview.pageSize;

            } else {

                historyview.pageNum = parseInt(i / historyview.pageSize) + 1;

            }
        }

        $("#pagination").html(historyview.paging());
    },
    getPage: function () {
        return {pageSize: historyview.getPageSize(), pageNo: historyview.getPageNo()};
    },
    getPageSize: function () {
        return historyview.pageSize;
    },
    getPageNo: function () {
        return (historyview.pageNow - 1);
    },
    loading: function () {
        var str = '<div style="text-align: center; width: 100%;height:60px; padding:20px">'
            + '<span>数据正在加载中</span>'
            + '<img alt="" src="pages/img/loading.gif" style="width: 35px;height: 35px">'
            + '</div>';

        return str;
    },
    notDat: function () {
        var str = '<div style="text-align: center; width: 100%;height:60px; padding:20px">'
            + '<span>没有数据</span>'
            + '</div>';

        return str;
    }

};