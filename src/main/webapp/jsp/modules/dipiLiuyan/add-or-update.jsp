<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑地皮留言</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">地皮留言管理</li>
                        <li class="breadcrumb-item active">编辑地皮留言</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">地皮留言信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa dipi">
                                        <label>地皮</label>
                                        <div>
                                            <select id="dipiSelect" name="dipiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 dipi">
                                        <label>地皮名称</label>
                                        <input id="dipiName" name="dipiName" class="form-control"
                                               placeholder="地皮名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 dipi">
                                        <label>地皮位置</label>
                                        <input id="dipiWeizhi" name="dipiWeizhi" class="form-control"
                                               placeholder="地皮位置" readonly>
                                    </div>
                                    <div class="form-group col-md-6 dipi">
                                        <label>地皮缩略图</label>
                                        <img id="dipiPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 dipi">
                                        <label>地皮价格</label>
                                        <input id="dipiNewMoney" name="dipiNewMoney" class="form-control"
                                               placeholder="地皮价格" readonly>
                                    </div>
                                    <div class="form-group col-md-6 dipi">
                                        <label>是否被使用</label>
                                        <input id="dipiValue" name="dipiValue" class="form-control"
                                               placeholder="是否被使用" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa kehu">
                                        <label>客户</label>
                                        <div>
                                            <select id="kehuSelect" name="kehuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 kehu">
                                        <label>客户姓名</label>
                                        <input id="kehuName" name="kehuName" class="form-control"
                                               placeholder="客户姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kehu">
                                        <label>客户手机号</label>
                                        <input id="kehuPhone" name="kehuPhone" class="form-control"
                                               placeholder="客户手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kehu">
                                        <label>客户身份证号</label>
                                        <input id="kehuIdNumber" name="kehuIdNumber" class="form-control"
                                               placeholder="客户身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kehu">
                                        <label>现住地址</label>
                                        <input id="kehuAddress" name="kehuAddress" class="form-control"
                                               placeholder="现住地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kehu">
                                        <label>出生年月</label>
                                        <input id="kehuTime" name="kehuTime" class="form-control"
                                               placeholder="出生年月" readonly>
                                    </div>
                                    <div class="form-group col-md-6 kehu">
                                        <label>客户照片</label>
                                        <img id="kehuPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="dipiId" name="dipiId" type="hidden">
                                <input id="kehuId" name="kehuId" type="hidden">
                                    <div class="form-group  col-md-6">
                                        <label>留言内容</label>
                                        <script id="dipiLiuyanContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var dipiLiuyanContentUe = UE.getEditor('dipiLiuyanContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="dipiLiuyanContent" id="dipiLiuyanContent-input">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>回复内容</label>
                                        <script id="replyContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var replyContentUe = UE.getEditor('replyContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="replyContent" id="replyContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "dipiLiuyan";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var dipiOptions = [];
    var kehuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#dipiLiuyanContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('dipiLiuyanContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#replyContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('replyContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '地皮'){//当前登录用户不为这个
                if($("#dipiId") !=null){
                    var dipiId = $("#dipiId").val();
                    if(dipiId == null || dipiId =='' || dipiId == 'null'){
                        alert("地皮不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '客户'){//当前登录用户不为这个
                if($("#kehuId") !=null){
                    var kehuId = $("#kehuId").val();
                    if(kehuId == null || kehuId =='' || kehuId == 'null'){
                        alert("客户不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("dipiLiuyan/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('adddipiLiuyan');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        <!-- 查询级联表的所有列表 -->
        function dipiSelect() {
            //填充下拉框选项
            http("dipi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    dipiOptions = res.data.list;
                }
            });
        }

        function dipiSelectOne(id) {
            http("dipi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                dipiShowImg();
                dipiShowVideo();
                dipiDataBind();
            }
        });
        }
        function kehuSelect() {
            //填充下拉框选项
            http("kehu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    kehuOptions = res.data.list;
                }
            });
        }

        function kehuSelectOne(id) {
            http("kehu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                kehuShowImg();
                kehuShowVideo();
                kehuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationdipiSelect() {
            var dipiSelect = document.getElementById('dipiSelect');
            if(dipiSelect != null && dipiOptions != null  && dipiOptions.length > 0 ) {
                for (var i = 0; i < dipiOptions.length; i++) {
                        dipiSelect.add(new Option(dipiOptions[i].dipiName, dipiOptions[i].id));
                }

                $("#dipiSelect").change(function(e) {
                        dipiSelectOne(e.target.value);
                });
            }

        }

        function initializationkehuSelect() {
            var kehuSelect = document.getElementById('kehuSelect');
            if(kehuSelect != null && kehuOptions != null  && kehuOptions.length > 0 ) {
                for (var i = 0; i < kehuOptions.length; i++) {
                        kehuSelect.add(new Option(kehuOptions[i].kehuName, kehuOptions[i].id));
                }

                $("#kehuSelect").change(function(e) {
                        kehuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var dipiSelect = document.getElementById("dipiSelect");
            if(dipiSelect != null && dipiOptions != null  && dipiOptions.length > 0 ) {
                for (var i = 0; i < dipiOptions.length; i++) {
                    if (dipiOptions[i].id == ruleForm.dipiId) {//下拉框value对比,如果一致就赋值汉字
                        dipiSelect.options[i+1].selected = true;
                        $("#dipiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var kehuSelect = document.getElementById("kehuSelect");
            if(kehuSelect != null && kehuOptions != null  && kehuOptions.length > 0 ) {
                for (var i = 0; i < kehuOptions.length; i++) {
                    if (kehuOptions[i].id == ruleForm.kehuId) {//下拉框value对比,如果一致就赋值汉字
                        kehuSelect.options[i+1].selected = true;
                        $("#kehuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.dipiLiuyanContent != null && ruleForm.dipiLiuyanContent != 'null' && ruleForm.dipiLiuyanContent != '') {

            var dipiLiuyanContentUeditor = UE.getEditor('dipiLiuyanContentEditor');
            dipiLiuyanContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.dipiLiuyanContent != null){
                    mes = ''+ ruleForm.dipiLiuyanContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                dipiLiuyanContentUeditor.setContent(mes);
            });
        }
        if (ruleForm.replyContent != null && ruleForm.replyContent != 'null' && ruleForm.replyContent != '') {

            var replyContentUeditor = UE.getEditor('replyContentEditor');
            replyContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.replyContent != null){
                    mes = ''+ ruleForm.replyContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                replyContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
            var dipiLiuyanContentEditor = UE.getEditor('dipiLiuyanContentEditor');
            if (dipiLiuyanContentEditor.hasContents()) {
                $('#dipiLiuyanContent-input').attr('value', dipiLiuyanContentEditor.getPlainTxt());
            }
            var replyContentEditor = UE.getEditor('replyContentEditor');
            if (replyContentEditor.hasContents()) {
                $('#replyContent-input').attr('value', replyContentEditor.getPlainTxt());
            }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('adddipiLiuyan');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                dipiId: "required",
                kehuId: "required",
                dipiLiuyanContent: "required",
                replyContent: "required",
                insertTime: "required",
            },
            messages: {
                dipiId: "地皮不能为空",
                kehuId: "客户不能为空",
                dipiLiuyanContent: "留言内容不能为空",
                replyContent: "回复内容不能为空",
                insertTime: "留言时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var adddipiLiuyan = window.sessionStorage.getItem("adddipiLiuyan");
        if (adddipiLiuyan != null && adddipiLiuyan != "" && adddipiLiuyan != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("dipiLiuyan/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        dipiDataBind();
        kehuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#dipiId").val(ruleForm.dipiId);
        $("#kehuId").val(ruleForm.kehuId);
        $("#dipiLiuyanContent").val(ruleForm.dipiLiuyanContent);
        $("#replyContent").val(ruleForm.replyContent);
        $("#insertTime-input").val(ruleForm.insertTime);

    }
    <!--  级联表的数据回显  -->
    function dipiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#dipiId").val(ruleForm.id);

        $("#dipiName").val(ruleForm.dipiName);
        $("#dipiWeizhi").val(ruleForm.dipiWeizhi);
        $("#dipiNewMoney").val(ruleForm.dipiNewMoney);
        $("#dipiContent").val(ruleForm.dipiContent);
        $("#dipiValue").val(ruleForm.dipiValue);
    }

    function kehuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#kehuId").val(ruleForm.id);

        $("#kehuName").val(ruleForm.kehuName);
        $("#kehuPhone").val(ruleForm.kehuPhone);
        $("#kehuIdNumber").val(ruleForm.kehuIdNumber);
        $("#kehuAddress").val(ruleForm.kehuAddress);
        $("#kehuTime").val(ruleForm.kehuTime);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        dipiShowImg();
        kehuShowImg();
    }


    <!--  级联表的图片  -->

    function dipiShowImg() {
        $("#dipiPhotoImg").attr("src",ruleForm.dipiPhoto);
    }


    function kehuShowImg() {
        $("#kehuPhotoImg").attr("src",ruleForm.kehuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        dipiShowVideo();
        kehuShowVideo();
    }


    <!--  级联表的视频  -->

    function dipiShowVideo() {
        $("#dipiPhotoV").attr("src",ruleForm.dipiPhoto);
    }

    function kehuShowVideo() {
        $("#kehuPhotoV").attr("src",ruleForm.kehuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            dipiSelect();
            kehuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationdipiSelect();
            initializationkehuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('adddipiLiuyan');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            var dipiLiuyanContentUeditor = UE.getEditor('dipiLiuyanContentEditor');
            dipiLiuyanContentUeditor.ready(function () {
                dipiLiuyanContentUeditor.setDisabled('fullscreen');
            });
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '客户') {
            // $(".aaaaaa").remove();
            $(".kehu").remove();//删除当前用户的信息
            //设置回复不能修改
            var replyContentUeditor = UE.getEditor('replyContentEditor');
            replyContentUeditor.ready(function () {
                replyContentUeditor.setDisabled('fullscreen');
            });
        }
        else{
            // alert("未知情况.......");
            // var replyContentUeditor = UE.getEditor('replyContentEditor');
            // replyContentUeditor.ready(function () {
            //     replyContentUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>