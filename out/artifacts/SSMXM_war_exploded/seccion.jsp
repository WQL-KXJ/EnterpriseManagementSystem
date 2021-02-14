<%--
  Created by IntelliJ IDEA.
  User: wql
  Date: 2021/1/18
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
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
                <li class="active"><a href="http://localhost:8080/SSMXM/seccion.jsp">员工信息 </a></li>
                <li ><a href="http://localhost:8080/SSMXM/CR.jsp">员工查询和增加</a></li>
                <li ><a href="http://localhost:8080/SSMXM/BM.jsp">部门信息</a></li>
                <li><a href="http://localhost:8080/SSMXM/admin.jsp">管理员信息</a></li>


            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="http://localhost:8080/SSMXM/Paneldata.jsp">员工分析</a></li>
                <li><a href="http://localhost:8080/SSMXM/document.jsp">部门公告</a></li>
                <li><a href="http://localhost:8080/SSMXM/WJ.jsp">文件归档</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" >
            <!--<h1 class="page-header">员工分析</h1>-->
            <span><h2 class="sub-header">员工列表</h2></span>


            <div class="col-md-offset-8">
            <form class="form-inline" id="input_WQL">
                <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                <div class="input-group" >
                    <div class="input-group-addon">跳转页面</div>
                    <input type="text" class="form-control" id="exampleInputAmount" placeholder="页面编号">
                    <div class="input-group-addon"></div>
                </div>
                <button id="button_FQ" type="button" class="btn btn-primary" onclick=button_WQL()>GO</button>
            </form>
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
<%--                   --%>
<%--                    <tr>--%>
<%--                        <td>1,001</td>--%>
<%--                        <td>Lorem</td>--%>
<%--                        <td>ipsum</td>--%>
<%--                        <td>dolor</td>--%>
<%--                        <td>sit</td>--%>
<%--                        <td>sas</td>--%>
<%--                        <td>--%>
<%--                            <button  type="button" class="btn btn-success btn-sm" >--%>
<%--&lt;%&ndash;                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&ndash;%&gt;--%>
<%--                                修改--%>
<%--                            </button>--%>
<%--                            <button  type="button" class="btn btn-danger btn-sm">--%>
<%--&lt;%&ndash;                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&ndash;%&gt;--%>
<%--                                删除--%>
<%--                            </button>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
                    </tbody>
                </table>
                <div class="col-sm-9 col-sm-offset-3 col-md-4 col-md-offset-4" id="WQL_FQ">
                        <span></span>
                    <nav aria-label="Page navigation" id="nav_wql">


                    </nav>
                </div>


            </div>
        </div>
    </div>
</div>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/vendor/holder.min.js"></script>
<script src="https://v3.bootcss.com/assets/js/ie10-viewport-bug-workaround.js"></script>
<script type="text/javascript">
  window.onload= function(){
     load_json_wql(1);
   };
var present;
   function load_json_wql(pns){
        $.ajax({
            url:"${pageContext.request.contextPath}/Emp",
            type:"GET",
            data:{pn:pns},
            dataType:"json",
            success:function (datas) {
                present=datas.pageNum
                if(pns>datas.pages){
                    alert("大于最大页数！");
                    pn=datas.pages;
                }else if(pns<1){
                    alert("小于最小页数！");
                    pns=1;
                }else{

                $("#table_wql tbody").empty();
                $("#WQL_FQ>span").empty();
                $("#nav_wql").empty();
                //显示table表数据
                table_wql_fq(datas);
                //分页信息
                build_love_fq(datas);
                //分页条信息
                build_wql_fq(datas);
            }}
   })};

function table_wql_fq(item) {
    var listwql = item.list;
    $.each(listwql,function (index,item) {
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
    });}

    function  build_love_fq(item) {
    // <span style="color:rgba(38, 149, 162,.8)">当前*页 总页数* 总记录数</span>
    var text_wql = "当前第"+item.pageNum+"页 总页数"+item.pages+" 总记录数"+item.total;
    $("<span></span>").attr("style","color:rgba(38, 149, 162,.8)").append("").append(text_wql).appendTo("#WQL_FQ>span");
}


/*                      <ul class="pagination">
                            <li><a href="#">首页</a></li>
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class=""><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                            <li><a href="#">末页</a></li>
                        </ul>*/
    function build_wql_fq(item) {
        var ul_wql=$("<ul></ul>").addClass("pagination");
        var a=$("<a></a>").append("首页").attr("href","#");

        var b =$("<a></a>").append("&laquo;").attr("href","#");


        var c=$("<a></a>").append("&raquo;").attr("href","#");

        var d=$("<a></a>").append("末页").attr("href","#");

        var shou_wql = $("<li></li>").append(a);
        var qian_wql = $("<li></li>").append(b);
        $(shou_wql).click(function () {
            load_json_wql(1);
        })
        $(qian_wql).click(function () {
            load_json_wql(item.prePage);
        })
        if(item.hasPreviousPage==false){
            shou_wql.addClass("disabled");
            qian_wql.addClass("disabled");
        }

        var hou_wql = $("<li></li>").append(c);
        var muo_wql =  $("<li></li>").append(d);

        $(hou_wql).click(function () {
            load_json_wql(item.pages);
        })

        $(muo_wql).click(function () {
            load_json_wql(item.nextPage);
        })

        if(item.hasNextPage == false){
            hou_wql.addClass("disabled");
            muo_wql.addClass("disabled");
        }

        ul_wql.append(shou_wql).append(qian_wql);

        $.each(item.navigatepageNums,function (index,items) {
            var e= $("<a></a>").append(items).attr("href","#");
            var li_wql = $("<li></li>").append(e);

            if(item.pageNum==items){
                li_wql.addClass("active");
            }
            $(li_wql).click(function () {
                load_json_wql(items);
            })

            ul_wql.append(li_wql);
        })
        ul_wql.append(hou_wql).append(muo_wql);

        ul_wql.appendTo("#nav_wql");
  }

 function button_WQL () {
      var page=$("#input_WQL input").val();
      load_json_wql(page);
  };

  var em_id;

  $(document).on("click",".SSSS_QQ",function () {
        var sc_id=$(this).attr("SC_id");

        $.ajax({
            url:"${pageContext.request.contextPath}/delete_emp",
            type:"GET",
            dataType:"json",
            data:{id:sc_id},
            success:function (datas) {
                alert("删除成功！！")

            }

        });
      //$("#modle_WQL").modal("hide");
      load_json_wql(present);

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
            load_json_wql(present);
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
</script>

</body>
</html>
