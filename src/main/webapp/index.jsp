<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript">
            function func1() {
              //  var name=$("input").valueOf();
                var json={"id":"1","name":"zhangsan"};
                var json2 = JSON.stringify(json);
                $.ajax({
                    contentType:"application/json",
                    type:"post",
                    url:"${pageContext.request.contextPath}/ajax2.do",
                   // data:"name="+name,
                    data:json2,
                    dataType:"json",
                    success:function (data) {
                        console.log(data.id+"name:"+data.name);
                    },
                    error:function () {
                        alert("5555555555")
                    }
                })

            }
        </script>
        <script type="text/javascript">
            function func2() {
                var name=$("input").valueOf();

                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/ajax.do",
                    data:"name="+name,
                    dataType:"json",
                    success:function (data) {
                        console.log(data.id+"name:"+data.name);
                    },
                    error:function () {
                        alert("5555555555");
                    }
                })

            }
        </script>
    </head>
<body>
<h2>Hello World!</h2>



发送json数据，响应的json数据：<input type="text" name="name" onblur="func1()"/>
发送string数据，响应的json数据：<input type="text" name="name" onblur="func2()"/>
</body>
</html>
