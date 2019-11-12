<%@page contentType="text/html; utf-8" pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="http://cdn-hangzhou.goeasy.io/goeasy.js" ></script>
    <script  src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    
    <script type="application/javascript">
        $(function () {
            //设置goeasy的订阅和接受消息
        var goEasy = new GoEasy({
            appkey: "BC-da7541c1cbed4a49b76815b25b1ff620"
        });
        //点击发送消息
        $("#submit").click(function () {
            var text= $("#input").val();
            goEasy.publish({
                channel: "my_channel",
                message: text
            });
        })
        //接受管道名称相同的goeasy传输的值
        goEasy.subscribe({
            channel: "ma_channel",
            onMessage: function (message) {
                console.log(message)
                $("#shou").val(message.content);
            }
        });

        })

    </script>

</head>
<body>

发送消息<input type="text" id="input"/><br/>
<button  id="submit">发送</button><br/>
接受消息<input type="text" id="shou" />
</body>
</html>