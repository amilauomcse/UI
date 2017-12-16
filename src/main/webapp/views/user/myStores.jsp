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
    <link rel="stylesheet" href="../../assets/css/timeline.css">
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
    <script src='../../assets/js/plugins/angular/angular.js'></script>
    <script src='../../assets/js/plugins/angular/angular-animate.min.js'></script>
    <script src='../../assets/js/plugins/angular/angular-route.min.js'></script>
    <script src='../../assets/js/plugins/angular/angular-aria.min.js'></script>
    <script src='../../assets/js/plugins/angular/angular-messages.min.js'></script>
    <script src='../../assets/js/plugins/angular/svg-assets-cache.js'></script>
    <script src='../../assets/js/plugins/angular/angular-material.js'></script>

    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-cookies-1.6.0.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/angular/angular-sanitize.js"></script>

    <script type="text/javascript" src="../../assets/js/plugins/angular/select.js"
    ></script>
    <script type="text/javascript" src="../../assets/js/blimpIT/blimpIT-module.js"></script>
    <script type="text/javascript"
            src="../../assets/js/blimpIT/userStoresController.js"></script>
</head>

<body style="background-color: white" ng-app="blimpIT" ng-controller="blimpIT" ng-cloak>
<div id="wrapper">
    <jsp:include page="userMenuBar.jsp"></jsp:include>
    <!-- Top content -->

    <div class="top-content" style="margin-top: 60px;">

        <div class="container">
            <div class="well well-sm">
                <%--<strong>Product List</strong>--%>
                <div class="btn-group" style="width: 100%">
                    <div class="btn-group" style="float:left">
                        <a href="#" ng-click="addNewStore()" class="btn btn-default btn-sm"><i style="color: red;"
                                                                                              class="fa fa-plus fa-2x"
                                                                                              aria-hidden="true"></i></a>
                    </div>
                    <div class="btn-group" style="float: right;">
                        <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
                        </span></a>
                        <a href="#" id="grid" class="btn btn-default btn-sm"><span
                                class="glyphicon glyphicon-th"></span></a>
                    </div>

                </div>
            </div>
            <div id="stores" class="row list-group">
                <div class="item  col-xs-3 col-lg-3" ng-repeat="store in user.storeList track by $index">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="http://placehold.it/400x250/000/fff" alt=""/>
                        <div class="caption">
                            <h4 ng-if="!store.new" style="float: left" class="group inner list-group-item-heading">
                                {{store.name}}</h4>

                            <h4 ng-if="store.new" style="float: left" class="group inner list-group-item-heading">
                                <input ng-model="store.name" class="form-control"></h4> <button ng-if="store.new" ng-click="saveNewStore(store)" class="btn btn-submit" type="button"> Save</button>

                            <div class="row">
                                <div class="col-xs-12 col-md-6">
                                    <p class="lead">
                                        <%--$ {{product.unitPrice}}</p>--%>
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
            $('#stores .item').addClass('list-group-item');
        });
        $('#grid').click(function (event) {
            event.preventDefault();
            $('#stores .item').removeClass('list-group-item');
            $('#stores .item').addClass('grid-group-item');
        });
    });

</script>

</body>

</html>