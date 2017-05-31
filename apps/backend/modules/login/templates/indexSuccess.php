<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" media="screen" href="/css/login.css">
</head>
<body>
<div class="login-page">
    <div class="form">
        <img src="/images/logo.png">
        <form class="login-form" action="<?php echo url_for('login')?>" method="post">
            <input type="text" placeholder="<?php echo isset($result_login)? $result_login: 'Please enter your username'?>" name="username"/>
            <input type="password" placeholder="Please enter your password" name="password"/>
            <button>login</button>
            <p class="message"><a href="https://www.facebook.com/nguyendg21199z">Contact giang21199z@gmail.com</a></p>
        </form>
    </div>
</div>
</body>
</html>
