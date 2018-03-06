// 初始化 layer模块
layui.use(['layer', 'laydate', 'table'], function() {
  return;
});

function showUserInfo() {
  layer.open({
    type: 1,
    skin: 'layui-layer-rim', //加上边框
    area: ['600px', '360px'],
    shadeClose: true,
    content: '\<\div style="padding:20px;">我就是大宝哥，大宝哥就是我！\<\/div>'
  });
}

Date.prototype.format = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "h+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}
