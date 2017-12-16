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
            src="../../assets/js/blimpIT/userHomeController.js"></script>
</head>

<body style="background-color: white" ng-app="blimpIT" ng-controller="blimpIT" ng-cloak>
<div id="wrapper">
    <jsp:include page="userMenuBar.jsp"></jsp:include>
    <!-- Top content -->

    <div class="top-content" style="margin-top: 60px;">

        <div class="container">
            <div id="products" class="row list-group">
                <div class="rc-MessageList" ng-repeat="item in newsFeed.timeLine">
                    <div class="rc-MessageContext">
                        <div class="rc-Message">
                            <div class="-messageDetails">
                                <div class="rc-Author">
                                    <div class="-avatar"><img
                                            ng-alt="{{item.from.name}}"
                                            ng-src="{{item.from.picture}}"
                                    >
                                    </div>
                                    <a><span
                                            class="-name"><span>{{item.from.name}}</span></span></a>
                                </div>
                                <div class="rc-Metadata"><a
                                        ng-href="{{item.postId}}" rel="noopener noreferrer"
                                        target="_blank">
                                    <time>{{item.created_time | date:'MMM dd, yyyy'}}
                                    </time>
                                </a></div>
                            </div>
                            <div class="-body">
                                <div class="-text">
                                                  <span class="rc-ExpandableText">
                                                      <span class="-expanded">
                                                          <span>{{item.message}}</span>
                                                      </span>
                                                  </span>
                                </div>
                                <div class="rc-Media" ng-show="item.picture">
                                    <div class="rc-Gallery">
                                        <button class="rc-Photo">
                                            <img alt=""
                                                 ng-src="{{item.picture}}">
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <%-- <div class="rc-Actions" ng-show="{{item.likeCount}}">
                            <div class="-actionWrapper">
                                <div class="rc-ActionItem">
                                    <button class="-btn rc-Button x-icon" type="button">
                                        <i style="margin-right: 5px;margin-left: 10px;"
                                           class="fa fa-thumbs-up" aria-hidden="true"></i>
                                    </button>
                                    <a class="-text">{{item.likeCount}}</a>
                                </div>
                            </div>

                            <div class="-actionWrapper">
                                <div class="rc-ActionItem">
                                    <button class="-btn rc-Button x-icon" type="button">
                                        <i style="margin-right: 5px;margin-left: 10px;"
                                           class="fa fa-comment" aria-hidden="true"></i>
                                    </button>
                                    <a class="-text">{{item.commentCount}}</a>
                                </div>
                            </div>

                            <div class="-actionWrapper">
                                <div class="rc-ActionItem">
                                    <button class="-btn rc-Button x-icon" type="button">
                                        <i style="margin-right: 5px;margin-left: 10px;"
                                           class="fa fa-share" aria-hidden="true"></i>
                                    </button>
                                    <a class="-text">{{item.shareCount}}</a>
                                </div>
                            </div>

                        </div>
                        <div class="rc-CommentList" style="max-height:200px; overflow-y: auto;">

                            <div ng-repeat="comment in item.commentList">
                                <div class="rc-CommentStreamView">
                                    <div class="columns">
                                        <div class="-avatar">
                                            <img ng-alt="{{comment.from.name}}"
                                                 ng-src="{{comment.from.picture}}">
                                        </div>
                                        <div class="-message">
                                            <a class="-author">{{comment.from.name}}</a>
                                            <span class="-text">
                                                                            <span>{{comment.text}}</span>
                                                                </span>


                                        </div>
                                        <span class="rc-MetadataText">
                                                                                    <time>
                                                                                        {{comment.created_time |
                                                                                        date:'MMM dd, yyyy'}}
                                                                                    </time>
                                                                                </span>


                                    </div>
                                </div>
                            </div>
                        </div>--%>
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