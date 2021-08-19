<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta charset="utf-8">
    <title>Vue 测试实例</title>
    <script src="vue/vue.js"></script>
    <script src="vue/axios.js></script>
</head>
<body>
<!--视图层-->
<div id="app">
    <input type="button" @click="getstudent" value="点击此处绑定学生信息"/>
    <br/>
    <br/>
    编号:{{id}}
    <br/>
    姓名:{{name}}
    <br/>
    年龄:{{age}}
</div>


<script>
    var vm=new Vue({
        //mv
        el:'#app',
        data: {
            "id":"",
            "name":"",
            "age":""
        },
        methods:{
            getstudent(){
                axios({
                    method:"get",
                    url:"three.do",
                }).then(function (result) {
                    alert(result);
                })
            }
        }
    })
</script>
</body>
</html>