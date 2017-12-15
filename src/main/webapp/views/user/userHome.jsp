<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RedBlimp</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="../../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../assets/css/form-elements.css">
    <link rel="stylesheet" href="../../assets/css/wizard.css">
    <link rel="stylesheet" href="../../assets/css/userHome.css">
    <!-- Fine Uploader Gallery CSS file
       ====================================================================== -->
    <link href="../../assets/fine-uploader/fine-uploader-gallery.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Fine Uploader JS file
    ====================================================================== -->
    <script src="../../assets/fine-uploader/fine-uploader.js"></script>

    <!-- Fine Uploader Gallery template
    ====================================================================== -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-cookies-1.6.0.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-animate.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-aria.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-sanitize.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-material.min.js"></script>

    <script type="text/javascript" src="../../assets/js/plugins/angular/select.js"
    ></script>
    <script type="text/javascript" src="../../assets/js/blimplt/blimplt-module.js"></script>
    <script type="text/javascript"
            src="../../assets/js/blimplt/userHomeController.js"></script>
</head>

<body style="background-color: white" ng-app="blimplt" ng-controller="blimplt" ng-cloak>
<div id="wrapper">
    <jsp:include page="userMenuBar.jsp"></jsp:include>
    <!-- Top content -->

    <div class="top-content" style="margin-top: 60px;">

        <div class="container">
            <div id="products" class="row list-group">
                <div class="item  col-xs-4 col-lg-4" ng-repeat="product in retailer.productList track by $index">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt=""/>
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading">
                                {{product.productName}}</h4>
                            <p class="group inner list-group-item-text">
                                {{product.description}}</p>
                            <div class="row">
                                <div class="col-xs-12 col-md-6">
                                    <p class="lead">
                                        $ {{product.unitPrice}}</p>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                    <a class="btn btn-success" href="http://www.jquery2dotnet.com">More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>


    </div>
</div>
<!-- Footer -->


<!-- Javascript -->
<script src="../../assets/js/plugins/jquery-1.11.1.min.js"></script>
<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
<%--<script src="assets/js/plugins/jquery.backstretch.min.js"></script>--%>
<script src="../../assets/js/plugins/retina-1.1.0.min.js"></script>
<script src="../../assets/js/plugins/wizard.js"></script>

<!--[if lt IE 10]>
<script src="assets/js/placeholder.js"></script>
<![endif]-->
<script>
    $(document).ready(function () {
        $('#list').click(function (event) {
            event.preventDefault();
            $('#products .item').addClass('list-group-item');
        });
        $('#grid').click(function (event) {
            event.preventDefault();
            $('#products .item').removeClass('list-group-item');
            $('#products .item').addClass('grid-group-item');
        });
    });

</script>

</body>

</html>