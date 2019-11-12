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
            var goEasy = new GoEasy({
                appkey: "BC-da7541c1cbed4a49b76815b25b1ff620"
            });
            $("#submit").click(function () {
                var text= $("#input").val();
                goEasy.publish({
                    channel: "ma_channel",
                    message: text
                });
            })
            goEasy.subscribe({
                channel: "my_channel",
                onMessage: function (message) {
                    console.log(message.content)
                    $("#shou").val(message.content);
                }
            });
        })
    </script>
</head>
<body>
    <input id="input" type="text"/><br/>
    <button type="button" id="submit">提交</button><br/>
    <input id="shou" type="text"><br/>
<script>
</script>
</body>
</html>