<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/tubiiao.ico">
    <title>企业管理系统</title>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://v3.bootcss.com/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Cooldog.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
    <link href="https://v3.bootcss.com/examples/dashboard/dashboard.css" rel="stylesheet">
    <script src="https://v3.bootcss.com/assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>


<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="http://localhost:8080/SSMXM/">首页</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Help</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">

    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="http://localhost:8080/SSMXM/seccion.jsp">员工信息 </a></li>
                <li ><a href="http://localhost:8080/SSMXM/CR.jsp">员工查询和增加</a></li>
                <li ><a href="http://localhost:8080/SSMXM/BM.jsp">部门信息</a></li>
                <li ><a href="http://localhost:8080/SSMXM/admin.jsp">管理员信息</a></li>
            </ul>

            <ul class="nav nav-sidebar">
                <li><a href="http://localhost:8080/SSMXM/Paneldata.jsp">员工分析</a></li>
                <li class="active"><a href="http://localhost:8080/SSMXM/document.jsp">部门公告</a></li>
                <li><a href="http://localhost:8080/SSMXM/WJ.jsp">文件归档</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">企业公告</h2>


            <div class="Cooldog_container">
                <div class="Cooldog_content">
                    <ul>
                        <li class="p1">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/1.png" alt="">
                            </a>
                        </li>
                        <li class="p2">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/2.png" alt="">
                            </a>
                        </li>
                        <li class="p3">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/3.png" alt="">
                            </a>
                        </li>
                        <li class="p4">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/4.png" alt="">
                            </a>
                        </li>
                        <li class="p5">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/5.png" alt="">
                            </a>
                        </li>
                        <li class="p5">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/6.png" alt="">
                            </a>
                        </li>
                        <li class="p5">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/img/7.png" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
                <a href="javascript:;" class="btn_left">
                    <i class="iconfont icon-zuoyoujiantou"></i>
                </a>
                <a href="javascript:;" class="btn_right">
                    <i class="iconfont icon-zuoyoujiantou-copy-copy"></i>
                </a>
                <!-- <a href="javascript:;" class="btn_close">
                    <i class="iconfont icon-icon-test"></i>
                </a> -->
                <div class="buttons clearfix">
                    <a href="javascript:;" class="color"></a>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                    <a href="javascript:;"></a>
                </div>
            </div>





        </div>
    </div>
</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Cooldog.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#ffffff">

</div>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/vendor/holder.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/ie10-viewport-bug-workaround.js"></script>
<script type="application/javascript">



</script>
</body>
</html>
