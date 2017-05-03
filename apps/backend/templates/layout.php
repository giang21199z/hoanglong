<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php
    //    if (!($sf_user->getAttribute('USER_BE'))) {
    //        header('Location: ' . url_for('login'));
    //        exit;
    //    } ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <?php sfContext::getInstance()->getResponse()->removeStylesheet('/sfDoctrinePlugin/css/global.css'); ?>
    <?php sfContext::getInstance()->getResponse()->removeStylesheet('/sfDoctrinePlugin/css/default.css'); ?>
    <?php include_javascripts() ?>
    <?php include_stylesheets() ?>

</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
                MENU
            </button>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                Administrator
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Account
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="dropdown-header">
                            Welcome </li>
                        <li class="divider"></li>
                        <li class="" id="change-pass"><a href="#">Change password</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<div class="container-fluid main-container">
    <div class="col-md-2 sidebar">
        <div class="row">
            <!-- uncomment code for absolute positioning tweek see top comment in css -->
            <div class="absolute-wrapper"></div>
            <!-- Menu -->
            <div class="side-menu">
                <nav class="navbar navbar-default" role="navigation">
                    <!-- Main Menu -->
                    <div class="side-menu-container">
                        <ul class="nav navbar-nav">
                            <li id="slide"><a href="#"><span
                                        class="glyphicon glyphicon-list-alt"></span> News</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>

            </div>
        </div>
    </div>
    <div class="col-md-10 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                <marquee><b>Welcome to hoanglonghospital.com</b></marquee>
            </div>
            <div class="panel-body">
                <?php echo $sf_content ?>
            </div>
        </div>
    </div>
    <footer class="pull-left footer">
        <p class="col-md-12">
        <hr class="divider">
        Copyright &COPY; 2017 <a href="https://www.facebook.com/nguyendg21199z">Giang Nguyen. SMVC-SEV</a>
        </p>
        <!--        --><?php
        //        $json = file_get_contents('http://api.fixer.io/latest?base=USD');
        //        $obj = json_decode($json);
        //        echo $obj->rates->KRW;
        //        ?>
    </footer>
</div>
<script>
    $('#change-pass').click(function () {
        $.confirm({
            title: 'Change New Password!',
            content: '' +
            '<form action="" class="formName">' +
            '<div class="form-group">' +
            '<label>Type old password</label>' +
            '<input type="text" placeholder="New password" class="old form-control" required />' +
            '</div>' +
            '<div class="form-group">' +
            '<label>Type a new password</label>' +
            '<input type="text" placeholder="New password" class="name form-control" required />' +
            '</div>' +
            '</form>',
            buttons: {
                formSubmit: {
                    text: 'Submit',
                    btnClass: 'btn-blue',
                    action: function () {
                        var name = this.$content.find('.name').val();
                        if (!name) {
                            $.alert('Provide a valid password');
                            return false;
                        }
                        var old = this.$content.find('.old').val();
                        if (!old) {
                            $.alert('Provide a valid password');
                            return false;
                        }
                        $.ajax({
                            type: 'POST',
                            url: '#',
                            data: {
                                password: name,
                                oldpass: old
                            },
                            success: function (data) {
                                var data1 = JSON.parse(data);
                                if (data1.status == 1) {
                                    $.alert('Change password success!');
                                } else {
                                    $.alert('Wrong password!');
                                }
                            }
                        }).done(function (data) {

                        });
                    }
                },
                cancel: function () {
                    //close
                },
            },
            onContentReady: function () {
                // bind to events
                var jc = this;
                this.$content.find('form').on('submit', function (e) {
                    // if the user submits the form by pressing enter in the field.
                    e.preventDefault();
                    jc.$$formSubmit.trigger('click'); // reference the button and click it
                });
            }
        });

    });
</script>
</body>
</html>
