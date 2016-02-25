
var pageNow = 1;

var pageNum = 1;

var pageSize = 10;

/*
 * 显示的条数
 */
function paging() {
    var str = "";
    str = "<ul class='pagination pull-right'>";
    if(pageNum < 6 && pageNum > 0){
        if(pageNow != 1){
            str += "<li><a href='javascript:previousPage()'><i class='fa fa-chevron-left'></i></a></li>";
        }else{
            str += "<li class='disabled'><a><i class='fa fa-chevron-left'></i></a></li>";
        }
        for ( var i = 1; i <= pageNum; i++) {
            if(i == pageNow){
                str += "<li class='active'><a>" + i + "</a></li>";
            }else {
                str += "<li><a href='javascript:jumpPage(" + i + ")'>" + i + "</a></li>";
            }
        }
        if(pageNow != pageNum){
            str += "<li><a href='javascript:nextPage()'><i class='fa fa-chevron-right'></i></a></li>";
        }else{
            str += "<li class='disabled'><a><i class='fa fa-chevron-right'></i></a></li>";
        }
    }else if (pageNum >= 6) {
        if (pageNow < 4) {
            if(pageNow != 1){
                str += "<li><a href='javascript:previousPage()'><i class='fa fa-chevron-left'></i></a></li>";
            }else{
                str += "<li class='disabled'><a><i class='fa fa-chevron-left'></i></a></li>";
            }
            str += 		"<li class='invisible'><a></a></li>";
            for ( var i = 1; i < 4; i++) {
                if(i == pageNow){
                    str += "<li class='active'><a>" + i + "</a></li>";
                }else {
                    str += "<li><a href='javascript:jumpPage(" + i + ")'>" + i + "</a></li>";
                }
            }
            str += 		"<li class='disabled'><a>…</a></li>" +
                "<li><a href='javascript:jumpPage(" + pageNum + ")'>" + pageNum + "</a></li>" +
                "<li class='invisible'><a></a></li>" +
                "<li><a href='javascript:nextPage()'><i class='fa fa-chevron-right'></i></a></li>";
        }else if ((pageNum - pageNow) < 3) {
            str += "<li><a href='javascript:previousPage()'><i class='fa fa-chevron-left'></i></a></li>" +
                "<li class='invisible'><a></a></li>" +
                "<li><a href='javascript:jumpPage(" + 1 + ")'>" + 1 + "</a></li>" +
                "<li class='disabled'><a>…</a></li>";
            for ( var i = pageNum - 2; i <= pageNum; i++) {
                if(i == pageNow){
                    str += "<li class='active'><a>" + i + "</a></li>";
                }else {
                    str += "<li><a href='javascript:jumpPage(" + i + ")'>" + i + "</a></li>";
                }
            }
            str += 		"<li class='invisible'><a></a></li>";
            if(pageNow != pageNum){
                str += "<li><a href='javascript:nextPage()'><i class='fa fa-chevron-right'></i></a></li>";
            }else{
                str += "<li class='disabled'><a><i class='fa fa-chevron-right'></i></a></li>";
            }
        }else {
            str += "<li><a href='javascript:previousPage()'><i class='fa fa-chevron-left'></i></a></li>" +
                "<li><a href='javascript:jumpPage(" + 1 + ")'>" + 1 + "</a></li>" +
                "<li class='disabled'><a>…</a></li>" +
                "<li><a href='javascript:jumpPage(" + (pageNow - 1) + ")'>" + (pageNow - 1) + "</a></li>" +
                "<li class='active'><a>" + pageNow + "</a></li>" +
                "<li><a href='javascript:jumpPage(" + (pageNow + 1) + ")'>" + (pageNow + 1) + "</a></li>" +
                "<li class='disabled'><a>…</a></li>" +
                "<li><a href='javascript:jumpPage(" + pageNum + ")'>" + pageNum + "</a></li>" +
                "<li><a href='javascript:nextPage()'><i class='fa fa-chevron-right'></i></a></li>";

        }
    }
    str += "</ul>";
    return str;
}

function initPage() {

    pageNow = 1;

    pageNum = 1;

}

/**
 * 上一页
 * @param tableId
 */
function previousPage() {

    if(pageNow > 1) {

        pageNow--;

        query();

    }
}


/**
 * 下一页
 * @param tableId
 */
function nextPage() {

    if(pageNow < pageNum) {

        pageNow++;

        query();

    }
}


/**
 * 跳转
 * @param tableId
 */
function jumpPage(i) {

    if(i > 0 && i <= pageNum) {

        pageNow = i;

        query();

    }
}


/**
 * 计算总页数
 * @param i
 */
function totalPage(i) {
    if(i != 0) {

        if(i % pageSize == 0) {

            pageNum = i / pageSize;

        } else {

            pageNum = parseInt(i / pageSize) + 1;

        }
    }

    $("#pagination").html(paging());

}


/**
 * 获取AJAX分页参数
 * @returns {___anonymous4046_4096}
 */
function getPage() {
    return { pageSize : getPageSize() , pageNo : getPageNo() };
}

/**
 * 获取分页大小
 * @returns {String}
 */
function getPageSize() {

    return pageSize;

}

/**
 * 当前页
 * @returns
 */
function getPageNo() {

    return (pageNow - 1)/* * pageSize*/;

}


/**
 * 数据加载中
 * @returns {String}
 */
function loading() {

    var str = '<div style="text-align: center; width: 100%;height:60px; padding:20px">'
        +	'<span>数据正在加载中</span>'
        +	'<img alt="" src="img/loading.gif" style="width: 35px;height: 35px">'
        + '</div>';

    return str;
}


/**
 * 没有数据
 * @returns {String}
 */
function notDat() {

    var str = '<div style="text-align: center; width: 100%;height:60px; padding:20px">'
        +	'<span>没有数据</span>'
        + '</div>';

    return str;
}