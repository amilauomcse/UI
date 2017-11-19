<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RedBlimp</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <%--<link rel="stylesheet" href="assets/css/form-elements.css">--%>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/login.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <%--<link rel="shortcut icon" href="assets/ico/favicon.png">--%>
    <%--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">--%>
    <%--<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">--%>
    <%--<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">--%>
    <%--<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">--%>

</head>

<body style="background-color: #000027">

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">

        <div class="container">
            <div class="row">
                <button onclick="location.href='signup.jsp';" style="float: right; background-color: green" class="btn btn-primary">Sign up</button>
            </div>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Blimplt</strong> </h1>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">

                    <div class="social-login">

                        <div class="social-login-buttons">
                            <a class="btn btn-link-1 btn-link-1-facebook" href="#">
                                <i class="fa fa-facebook"></i> Facebook
                            </a>
                            <a class="btn btn-link-1 btn-link-1-twitter" href="#">
                                <i class="fa fa-twitter"></i> Twitter
                            </a>
                            <a class="btn btn-link-1 btn-link-1-google-plus" href="#">
                                <i class="fa fa-google-plus"></i> Google Plus
                            </a>
                        </div>

                    </div>
                    <div class="special-hr">or</div>
                    <div class="form-box">

                            <form role="form" action="" method="post" class="login-form">
                                <div class="form-group">
                                    <label class="sr-only" for="form-username">Username</label>
                                    <input type="text" name="form-username" placeholder="Username..."
                                           class="text-form" id="form-username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-password">Password</label>
                                    <input type="password" name="form-password" placeholder="Password..."
                                           class="text-form" id="form-password">
                                </div>
                                <div class="col-sm-12" >
                                <a style="float: right; color: white;" href="#" >Forgot password</a>
                                </div>
                                <button style="font-size: 2em" type="submit" onclick="location.href('welcome.jsp')" class="btn btn-primary">Log in</button>
                            </form>
                    </div>



                </div>
                <div class="col-sm-3"></div>
                <%--<div class="col-sm-1"></div>--%>
                <%--<div class="col-sm-1"></div>--%>

                <%--<div class="col-sm-5">--%>

                    <%--<div class="form-box">--%>
                        <%--<div class="form-top">--%>
                            <%--<div class="form-top-left">--%>
                                <%--<h3>New to Blimplt? Sign up</h3>--%>
                            <%--</div>--%>
                           <%--&lt;%&ndash; <div class="form-top-right">--%>
                                <%--<i class="fa fa-pencil"></i>--%>
                            <%--</div>&ndash;%&gt;--%>
                        <%--</div>--%>
                        <%--<div class="form-bottom">--%>
                            <%--<form role="form" action="" method="post" class="registration-form">--%>
                                <%--<div class="form-group">--%>
                                    <%--<label class="sr-only" for="form-first-name">First name</label>--%>
                                    <%--<input type="text" name="form-first-name" placeholder="First name..."--%>
                                           <%--class="form-first-name form-control" id="form-first-name">--%>
                                <%--</div>--%>
                                <%--<div class="form-group">--%>
                                    <%--<label class="sr-only" for="form-last-name">Last name</label>--%>
                                    <%--<input type="text" name="form-last-name" placeholder="Last name..."--%>
                                           <%--class="form-last-name form-control" id="form-last-name">--%>
                                <%--</div>--%>
                                <%--<div class="form-group">--%>
                                    <%--<label class="sr-only" for="form-email">Email</label>--%>
                                    <%--<input type="text" name="form-email" placeholder="Email..."--%>
                                           <%--class="form-email form-control" id="form-email">--%>
                                <%--</div>--%>
                                <%--<button type="submit" class="btn">Sign me up!</button>--%>
                            <%--</form>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                <%--</div>--%>
            </div>

        </div>
    </div>

</div>

<!-- Footer -->


<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="assets/js/placeholder.js"></script>
<![endif]-->

</body>

</html>