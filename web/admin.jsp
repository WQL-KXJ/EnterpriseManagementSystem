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
                <li class="active"><a href="http://localhost:8080/SSMXM/admin.jsp">管理员信息</a></li>
            </ul>

            <ul class="nav nav-sidebar">
                <li><a href="http://localhost:8080/SSMXM/Paneldata.jsp">员工分析</a></li>
                <li><a href="http://localhost:8080/SSMXM/document.jsp">部门公告</a></li>
                <li><a href="http://localhost:8080/SSMXM/WJ.jsp">文件归档</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">管理员修改</h2>
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">管理员名称</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Admin Name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">原密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="original password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">新密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="inputPassword4" placeholder="new password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">确定新密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="inputPassword5" placeholder="confirm new password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-10">
                        <button type="button" class="btn btn-default" id="cong_wql">重置密码</button>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</div>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/vendor/holder.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/ie10-viewport-bug-workaround.js"></script>
<script type="application/javascript">

    $(document).on("click","#cong_wql",function(){
        var names=$("#inputEmail3").val();
        var  pass0=$("#inputPassword3").val();
        var pass1=$("#inputPassword4").val();
        var pass2=$("#inputPassword5").val();
        var a_wql=false;
        if(pass0!="" && pass1!="" && pass2!=""){
        if(pass1==pass2){

            $.ajax({
                url:"${pageContext.request.contextPath}/select_admin",
                type:"POST",
                dataType:"json",
                data:{name:names,password:pass0},
                success:function (datas) {
                    $.ajax({
                        url:"${pageContext.request.contextPath}/updata_admin",
                        type:"POST",
                        dataType:"text",
                        data:{name:names,password:pass2},
                        success:function (datas) {

                            alert("密码重置成功");

                        }
                    });
                a_wql=true;
                },
                error:function () {
                    alert("原密码错误！！")
                }
            });

                if(a_wql) {

                }
        }else{
            alert("输入的新密码不一致！！")

        }
        }else{

            alert("密码为空！")

        }
})


</script>
</body>
</html>