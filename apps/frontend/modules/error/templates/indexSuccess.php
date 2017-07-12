<style>
    a{
        color: white;
        text-decoration: none;
    }
    html, body{
        height: 100%;
        text-align: center;
    }
    body {
        background-image: url("/images/404.jpg") ;
        background-position: center center;
        background-repeat:  no-repeat;
        background-attachment: fixed;
        background-size:  cover;
        background-color: #999;

    }

    div, body{
        margin: 0;
        padding: 0;
        font-family: exo, sans-serif;

    }
    .wrapper {
        height: 100%;
        width: 100%;
    }

    .message {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        width: 100%;
        height:45%;
        bottom: 0;
        display: block;
        position: absolute;
        background-color: rgba(0,0,0,0.6);
        color: #fff;
        padding: 0.5em;
    }


</style>
<div class="wrapper">
    <div class="message">
        <h1>Rất tiếc đường dẫn không tồn tại</h1>
        <p>Vui lòng trở lại <a href="<?php echo url_for('homepage')?>">trang chủ</a> hoặc để lại cho chúng tôi lời nhắn qua fanpage: <a href="https://www.facebook.com/phongkhamdakhoahoanglong/">Facebook</a></p>
    </div>
</div>