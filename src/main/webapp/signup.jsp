<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BootZard - Bootstrap Wizard Template</title>
    <style>
        #radioBtn .notActive {
            color: #3276b1;
            background-color: #fff;
        }
    </style>
    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/wizard.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <script type="text/javascript" src="assets/js/plugins/angular/angular.min.js"></script>
    <script type="text/javascript" src="assets/js/plugins/angular/angular-cookies-1.6.0.min.js"></script>
    <script type="text/javascript" src="assets/js/plugins/angular/angular-animate.min.js"></script>
    <script type="text/javascript" src="assets/js/plugins/angular/angular-aria.min.js"></script>
    <script type="text/javascript" src="assets/js/plugins/angular/angular-sanitize.js"></script>
    <script type="text/javascript" src="assets/js/plugins/angular/angular-material.min.js"></script>

    <script type="text/javascript" src="assets/js/plugins/angular/select.js"
    ></script>
    <script type="text/javascript" src="assets/js/blimplt/blimplt-module.js"></script>
    <script type="text/javascript"
            src="assets/js/blimplt/signUpController.js"></script>
</head>

<body>

<!-- Top menu -->

<!-- Top content -->
<div class="top-content" ng-app="blimplt" ng-controller="blimplt" ng-cloak>
    <div class="container">

        <div class="row">
            <div class="col-sm-8 col-sm-offset-2 text">
                <h1><strong>BlimpIt</strong></h1>
                <%--<div class="description">--%>
                <%--<p>--%>
                <%--This is a free responsive Bootstrap form wizard.--%>
                <%--Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!--%>
                <%--</p>--%>
                <%--</div>--%>
            </div>
        </div>

        <div class="row" id="selectUserTypeForm">
            <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">

                <h3 class="text">Tell us who you are</h3>
                <form role="form" action="" method="post">

                    <%--<h4 style="text-align: center">Tell us who you are!</h4>--%>
                    <div class="row form-group">
                        <div class="col-sm-3"></div>
                        <button type="button" ng-click="privateUser()"
                                class="btn btn-next btn-lg btn-huge col-sm-6" id="privateUser"
                                style="font-weight: 300;">Private User
                        </button>
                        <div class="col-sm-3"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col-sm-3"></div>
                        <button type="button" ng-click="businessUser()"
                                class="btn btn-next btn-lg btn-huge col-sm-6" id="businessUser"
                                style="font-weight: 300;">Business User
                        </button>
                        <div class="col-sm-3"></div>
                    </div>

                </form>
            </div>
        </div>

        <div class="row" id="privateUserForm">
            <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
                <form role="form" action="" method="post" class="f1">
                    <%--<h4>Tell us who you are:</h4>--%>
                    <div class="form-group">
                        <label class="sr-only" for="private-email">Email</label>
                        <input type="email" name="private-email" placeholder="Email" class="private-email form-control"
                               id="private-email">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="private-password">Password</label>
                        <input type="password" name="private-password" placeholder="Password"
                               class="private-password form-control" id="private-password">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="private-confirm-password">Confirm Password</label>
                        <input type="password" name="private-confirm-password" placeholder="Confirm Password"
                               class="private-confirm-password form-control" id="private-confirm-password">
                    </div>
                    <div class="f1-buttons">
                        <button type="button" class="btn btn-next">Submit</button>
                    </div>


                </form>
            </div>
        </div>

        <div class="row" id="businessUserForm">
            <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
                <form role="form" action="" method="post" class="f1">

                    <%-- <h3>Register To Our App</h3>
                     <p>Fill in the form to get instant access</p>--%>
                    <div class="f1-steps">
                        <div class="f1-progress">
                            <div class="f1-progress-line" data-now-value="16.66" data-number-of-steps="3"
                                 style="width: 16.66%;"></div>
                        </div>
                        <div class="f1-step active">
                            <div class="f1-step-icon"><i class="fa fa-user"></i></div>
                            <p>Basic Info</p>
                        </div>
                        <div class="f1-step">
                            <div class="f1-step-icon"><i class="fa fa-key"></i></div>
                            <p>Business Info</p>
                        </div>
                        <div class="f1-step">
                            <div class="f1-step-icon"><i class="fa fa-twitter"></i></div>
                            <p>Subscription</p>
                        </div>

                    </div>

                    <fieldset>
                        <h4>Tell us who you are:</h4>
                        <div class="form-group">
                            <label for="business-business-name">Business Name</label>
                            <input type="text" name="business-business-name" class="business-business-name form-control"
                                   id="business-business-name">
                        </div>
                        <div class="form-group">
                            <label for="business-email">Email</label>
                            <input type="email" name="business-email" class="business-email form-control"
                                   id="business-email">
                        </div>
                        <div class="form-group">
                            <label for="business-username">Username</label>
                            <input type="text" name="business-username"
                                   class="business-username form-control" id="business-username">
                        </div>
                        <div class="form-group">
                            <label for="business-password">Password</label>
                            <input type="password" name="business-password" class="business-password form-control"
                                   id="business-password">
                        </div>
                        <div class="form-group">
                            <label for="business-confirm-password">Confirm Password</label>
                            <input type="password" name="business-confirm-password"
                                   class="business-confirm-password form-control" id="business-confirm-password">
                        </div>
                        <div class="f1-buttons">
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset>

                    <fieldset>
                        <h4>Tell us about your business:</h4>
                        <div class="form-group">
                            <label for="business-location">Location</label>
                            <input type="text" name="business-location" class="business-location form-control"
                                   id="business-location">
                        </div>
                        <div class="form-group">
                            <label for="business-category">Category</label>
                            <select name="business-category" class="business-category form-control"
                                    id="business-category">
                                <option>Food</option>
                                <option>Entertainment</option>
                                <option>Fashion</option>
                                <option>Electric</option>
                                <option>Other</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="business-sub-category">Sub Category</label>
                            <select name="business-sub-category" class="business-sub-category form-control"
                                    id="business-sub-category">
                                <option>Cafe</option>
                                <option>Restaurant</option>
                                <option>Bar</option>
                                <option>Other</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="business-number-stores">Number of stores</label>
                            <input type="number" min="1" value="1" name="business-number-stores"
                                   class="business-number-stores form-control" id="business-number-stores">
                        </div>

                        <div class="f1-buttons">
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="button" class="btn btn-next">Next</button>
                        </div>
                    </fieldset>

                    <fieldset>
                        <h4>Subscription:</h4>
                        <div class="form-group">
                            <label for="business-subscription-type">Subscription Type</label>
                            <select name="business-subscription-type" class="business-subscription-type form-control"
                                    id="business-subscription-type">
                                <option>Premium</option>
                                <option>Normal</option>
                                <option>Free Trial</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <input type="checkbox" name="business-terms" class="business-terms"
                                   id="business-terms">
                            <label for="business-terms">Agree to all terms</label>
                        </div>

                        <div class="f1-buttons">
                            <button type="button" class="btn btn-previous">Previous</button>
                            <button type="submit" class="btn btn-submit">Submit</button>
                        </div>
                    </fieldset>



                </form>
            </div>
        </div>

    </div>
</div>


<!-- Javascript -->
<script src="assets/js/plugins/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/plugins/jquery.backstretch.min.js"></script>
<script src="assets/js/plugins/retina-1.1.0.min.js"></script>
<script src="assets/js/plugins/wizard.js"></script>

<!--[if lt IE 10]>
<!--<script src="assets/js/placeholder.js"></script>-->

<%--<![endif]-->--%>
<script>
    $('#radioBtn a').on('click', function () {
        var sel = $(this).data('title');
        var tog = $(this).data('toggle');
        $('#' + tog).prop('value', sel);

        $('a[data-toggle="' + tog + '"]').not('[data-title="' + sel + '"]').removeClass('active').addClass('notActive');
        $('a[data-toggle="' + tog + '"][data-title="' + sel + '"]').removeClass('notActive').addClass('active');
    })
</script>
</body>

</html>