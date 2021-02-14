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

<!-- Modal -->
<div class="modal fade" id="modle_WQL" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">修改用户</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">名字</label>
                        <div class="col-sm-6">
                            <input type="text" name="name" class="form-control" id="inputEmail3" placeholder="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">年龄</label>
                        <div class="col-sm-6">
                            <input type="text" name="age" class="form-control" id="inputPassword3" placeholder="age">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">电话号码</label>
                        <div class="col-sm-6">
                            <input type="text" name="phone" class="form-control" id="inputPhone3" placeholder="Phone">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">地址</label>
                        <div class="col-sm-6">
                            <input type="text" name="attr"class="form-control" id="inputAddr3" placeholder="address">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">性别</label>
                        <div class="col-sm-6">
                            <label class="radio-inline">
                                <input type="radio" name="gender"  id="inlineRadio1" value="男" > 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="inlineRadio2" value="女"> 女
                            </label>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">部门</label>
                        <div class="col-sm-4">
                            <select class="form-control" id="opt">

                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="gen_WQL">更新</button>
            </div>
        </div>
    </div>
</div>







<!-- Modal -->
<div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabe2">添加部门</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">部门名称</label>
                        <div class="col-sm-6">
                            <input type="text" name="name" class="form-control" id="inputEmail10" placeholder="name of a department ">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="add_bmwql">确定添加</button>
            </div>
        </div>
    </div>
</div>



















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
                <li class="active"><a href="http://localhost:8080/SSMXM/BM.jsp">部门信息</a></li>
                <li><a href="http://localhost:8080/SSMXM/admin.jsp">管理员信息</a></li>
            </ul>

            <ul class="nav nav-sidebar">
                <li><a href="http://localhost:8080/SSMXM/Paneldata.jsp">员工分析</a></li>
                <li><a href="http://localhost:8080/SSMXM/document.jsp">部门公告</a></li>
                <li><a href="http://localhost:8080/SSMXM/WJ.jsp">文件归档</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="sub-header">部门查询和增加</h2>
            <div class="col-md-offset-2">
            <ul class="nav nav-pills" id="UL_WQL">

                <li role="presentation" id="WQL_addbm"><a href="#" class="btn btn-success">添加部门</a></li>


            </ul>
            </div>


            <div class="table-responsive">
                <table class="table table-striped table-hover" id="table_wql">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>部门</th>
                        <th>年龄</th>
                        <th>性别</th>
                        <th>电话号码</th>
                        <th>地址</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/vendor/holder.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/ie10-viewport-bug-workaround.js"></script>

<script type="application/javascript">
    // li role="presentation" class="active"><a href="#">Home</a></li>
    // <li role="presentation"><a href="#">Profile</a></li>
    // <li role="presentation"><a href="#">Messages</a></li>
    // <li role="presentation"><a href="#">Home</a></li>
    // <li role="presentation"><a href="#">Profile</a></li>
    // <li role="presentation"><a href="#">Messages</a></li>
    // <li role="presentation"><a href="#">Messages</a></li>
    // <li role="presentation"><button type="button" class="btn btn-success">添加部门</button></li>
    window.onload=function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/select_bm",
            type:"GET",
            dataType:"json",
            data:"",
            success:function (datas) {
            $.each(datas,function (index,item) {
               var a= $("<a href='#'></a>").append(item.branch);
               $("<li></li>").attr("role","presentation").append(a).addClass("a_wql").attr("id",item.id).appendTo("#UL_WQL");
            });
            }
        });
        ajax_bmid(1);
    }
    var wql_a;
    $(document).on("click",".a_wql",function () {
        $("#table_wql tbody").empty();
        wql_a=$(this).attr("id");
        ajax_bmid(wql_a);



    });
function  ajax_bmid(bmid) {
    $("#table_wql tbody").empty();
    $.ajax({
        url:"${pageContext.request.contextPath}/select_bmid",
        type:"GET",
        dataType:"json",
        data:{bmid:bmid},
        success:function (datas) {
            $.each(datas,function (index,item) {
                var id_wql = $("<td></td>").append(item.id);
                var name_wql = $("<td></td>").append(item.name);
                var bm_wql = $("<td></td>").append(item.bms.branch);
                var age_wql =  $("<td></td>").append(item.age);
                var gender_wql = $("<td></td>").append(item.gender);
                var phone_wql =  $("<td></td>").append(item.phone);
                var addr_wql = $("<td></td>").append(item.addr);
                var but_wql=$("<button></button>").addClass("btn btn-success btn-sm WWWW_QQ").attr("EM_id",item.id).append("修改");
                var but_fq=$("<button></button>").addClass("btn btn-danger btn-sm SSSS_QQ").attr("SC_id",item.id).append("删除");
                var button_wql = $("<td></td>").append(but_wql).append("&nbsp;&nbsp;&nbsp;").append(but_fq);
                //var button_fq = $("<td></td>").append(but_fq)
                $("<tr></tr>").append(id_wql)
                    .append(name_wql)
                    .append(bm_wql)
                    .append(age_wql)
                    .append(gender_wql)
                    .append(phone_wql)
                    .append(addr_wql)
                    .append(button_wql)
                    .appendTo("#table_wql tbody");
            });

        }
    });
}
    $(document).on("click",".SSSS_QQ",function () {
        var sc_id=$(this).attr("SC_id");

        $.ajax({
            url:"${pageContext.request.contextPath}/delete_emp",
            type:"GET",
            dataType:"json",
            data:{id:sc_id},
            success:function (datas) {
                alert("删除成功！！")
                ajax_bmid(wql_a);
            }

        });
        //$("#modle_WQL").modal("hide");
        ajax_bmid(wql_a);

    });

    $(document).on("click",".WWWW_QQ",function () {
        em_id= $(this).attr("EM_id");
        $.ajax({
            url:"${pageContext.request.contextPath}/ID",
            type: "GET",
            dataType: "json",
            data:{id:em_id},
            success:function (datas){
                $("#inputEmail3").val(datas.name);
                $("#inputPassword3").val(datas.age);
                $("#inputPhone3").val(datas.phone);
                $("#inputAddr3").val(datas.addr);
                $("input[name=gender]").val([datas.gender]);
                $("#opt").val([datas.bms.branch]);
            }
        });


        $("#modle_WQL").modal({
            backdrop:"static"
        });

    });

    opt_bm();

    $("#gen_WQL").click(function () {
        var bmid;
        var names= $("#inputEmail3").val();
        var ages=$("#inputPassword3").val();
        var phones=$("#inputPhone3").val();
        var addrs=  $("#inputAddr3").val();
        var genders=  $("input[name=gender]").val();
        var bmss= $("#opt").val();
        var GG=document.getElementsByClassName("GGG")
        for(var t=0;t < GG.length;t++){
            if(GG[t].text==bmss){
                bmid=t+1
            }
        }
        $.ajax({
            url:"${pageContext.request.contextPath}/updata_emp",
            type:"POST",
            dataType:"json",
            data:{
                id:em_id,
                name:names,
                bmid:bmid,
                gender:genders,
                age:ages,
                phone:phones,
                addr:addrs
            },
            success:function (datas) {
                alert("更新完成！！！");
                $("#modle_WQL").modal("hide");
                ajax_bmid(wql_a);
            }
        });
    });

    function opt_bm() {
        $.ajax({
            url:"${pageContext.request.contextPath}/BM",
            type: "GET",
            dataType: "json",
            data:"",
            success:function (datas) {
                $.each(datas,function (index,item) {
                    $("<option></option>").append(item.branch).addClass("GGG").attr("bmid",item.id).appendTo("#opt");
                })}});
    }

$("#WQL_addbm").click(function () {
    $("#myModa2").modal({
        backdrop:"static"
    });
})
//add_bmwql         inputEmail10
    $("#add_bmwql").click(
        function () {
           var bmname= $("#inputEmail10").val();
           $.ajax({
               url:"${pageContext.request.contextPath}/insert_bmname",
               type: "POST",
               dataType: "json",
               data:"bmname="+bmname,
                success:function () {
                    $("#myModa2").modal("hide");

                }
           })
        }
    );
</script>

</body>
</html>