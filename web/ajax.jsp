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
    <script src="vue/vue-resource.js"></script>
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
        el:'#app',
        data: {
            "id":"",
            "name":"",
            "age":""
        },

        methods:{
            //发出ajax请求
            getstudent(){
                // this.$http.get("请求路径"）.then("回调函数")
                // this.$http.get("one.do",{"name":"zs"}).then(function (data) {
                //回调函数: 先走后台 取数据  再执行回调函数
                    this.$http.get("one.do?id=1003&name=zs&age=22").then(function (data) {
                        this.id=data.body.id;
                        this.name=data.body.name;
                        this.age=data.body.age;

                });
                //post请求第三个参数
                // {emulateJSON:true}
            }
        }
    })
</script>
</body>
</html>