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
    <link rel="stylesheet" href="../../assets/css/retailerHome.css">
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
            src="../../assets/js/blimpIT/retailerHomeController.js"></script>
    <script type="text/template" id="qq-template-gallery">
        <div class="qq-uploader-selector qq-uploader qq-gallery" qq-drop-area-text="Drop files here">
            <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
                <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
                     class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
            </div>
            <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
                <span class="qq-upload-drop-area-text-selector"></span>
            </div>
            <div class="qq-upload-button-selector qq-upload-button">
                <div>Upload</div>
            </div>
            <span class="qq-drop-processing-selector qq-drop-processing">
                <span>Processing dropped files...</span>
                <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
            </span>
            <ul class="qq-upload-list-selector qq-upload-list" role="region" aria-live="polite"
                aria-relevant="additions removals">
                <li>
                    <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
                    <div class="qq-progress-bar-container-selector qq-progress-bar-container">
                        <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
                             class="qq-progress-bar-selector qq-progress-bar"></div>
                    </div>
                    <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                    <div class="qq-thumbnail-wrapper">
                        <img class="qq-thumbnail-selector" qq-max-size="120" qq-server-scale>
                    </div>
                    <button type="button" class="qq-upload-cancel-selector qq-upload-cancel">X</button>
                    <button type="button" class="qq-upload-retry-selector qq-upload-retry">
                        <span class="qq-btn qq-retry-icon" aria-label="Retry"></span>
                        Retry
                    </button>

                    <div class="qq-file-info">
                        <div class="qq-file-name">
                            <span class="qq-upload-file-selector qq-upload-file"></span>
                            <span class="qq-edit-filename-icon-selector qq-edit-filename-icon"
                                  aria-label="Edit filename"></span>
                        </div>
                        <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
                        <span class="qq-upload-size-selector qq-upload-size"></span>
                        <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">
                            <span class="qq-btn qq-delete-icon" aria-label="Delete"></span>
                        </button>
                        <button type="button" class="qq-btn qq-upload-pause-selector qq-upload-pause">
                            <span class="qq-btn qq-pause-icon" aria-label="Pause"></span>
                        </button>
                        <button type="button" class="qq-btn qq-upload-continue-selector qq-upload-continue">
                            <span class="qq-btn qq-continue-icon" aria-label="Continue"></span>
                        </button>
                    </div>
                </li>
            </ul>

            <dialog class="qq-alert-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Close</button>
                </div>
            </dialog>

            <dialog class="qq-confirm-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">No</button>
                    <button type="button" class="qq-ok-button-selector">Yes</button>
                </div>
            </dialog>

            <dialog class="qq-prompt-dialog-selector">
                <div class="qq-dialog-message-selector"></div>
                <input type="text">
                <div class="qq-dialog-buttons">
                    <button type="button" class="qq-cancel-button-selector">Cancel</button>
                    <button type="button" class="qq-ok-button-selector">Ok</button>
                </div>
            </dialog>
        </div>
    </script>
</head>

<body style="background-color: white" ng-app="blimpIT" ng-controller="blimpIT" ng-cloak>
<div id="wrapper">
    <jsp:include page="retailerMenuBar.jsp"></jsp:include>
    <!-- Top content -->

    <div class="top-content" style="margin-top: 60px;">

        <div class="container">
            <div class="well well-sm">
                <%--<strong>Product List</strong>--%>
                <div class="btn-group" style="width: 100%">
                    <div class="btn-group" style="float:left">
                        <a href="#" ng-click="addProduct()" class="btn btn-default btn-sm"><i style="color: red;"
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

        <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">New Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row" id="retailerAddProductForm">
                            <form role="form" action="" method="post" class="f1">

                                <div class="f1-steps">
                                    <div class="f1-progress">
                                        <div class="f1-progress-line" data-now-value="16.66"
                                             data-number-of-steps="3"
                                             style="width: 16.66%;"></div>
                                    </div>
                                    <div class="f1-step active">
                                        <div class="f1-step-icon"><i class="fa fa-user"></i></div>
                                        <p>Product Info</p>
                                    </div>
                                    <div class="f1-step">
                                        <div class="f1-step-icon"><i class="fa fa-key"></i></div>
                                        <p>More Info</p>
                                    </div>
                                    <div class="f1-step">
                                        <div class="f1-step-icon"><i class="fa fa-twitter"></i></div>
                                        <p>Images</p>
                                    </div>

                                </div>

                                <fieldset>

                                    <div class="form-group">
                                        <label for="product-code">Product Code</label>
                                        <input ng-model="retailer.product.productCode" type="text" class="form-control"
                                               id="product-code">
                                    </div>
                                    <div class="form-group">
                                        <label for="product-name">Product Name</label>
                                        <input ng-model="retailer.product.productName" type="text" name="business-email"
                                               class="business-email form-control"
                                               id="product-name">
                                    </div>
                                    <div class="form-group">
                                        <label for="unit-price">Unit Price</label>
                                        <input ng-model="retailer.product.unitPrice" type="text"
                                               class="form-control" id="unit-price">
                                    </div>

                                    <div class="form-group">
                                        <label for="unit-description"> Description</label>
                                        <textarea ng-model="retailer.product.description"
                                                  class="form-control" id="unit-description"></textarea>
                                    </div>

                                    <div class="f1-buttons">
                                        <button type="button" class="btn btn-next">Next</button>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label for="business-stock-count">Available Stock Count</label>
                                        <input ng-model="retailer.product.stockCount" type="number"
                                               name="business-stock-count"
                                               class="business-stock-count form-control"
                                               id="business-stock-count">
                                    </div>

                                    <div class="form-group">
                                        <input ng-model="retailer.product.enableQuickBuy" type="checkbox"
                                               name="business-quick-buy" class="business-quick-buy"
                                               id="business-quick-buy">
                                        <label for="business-quick-buy">Add to quick buy</label>
                                    </div>
                                    <div ng-if="retailer.product.enableQuickBuy" class="form-group">
                                        <label for="business-quick-buy-stock-count">Quick buy Stock Count</label>
                                        <input ng-model="retailer.product.quickBuyStockCount" type="number"
                                               name="business-quick-buy-stock-count"
                                               class="business-quick-buy-stock-count form-control"
                                               id="business-quick-buy-stock-count">
                                    </div>
                                    <div class="form-group">
                                        <label for="business-discount">Discount</label>
                                        <input ng-model="retailer.product.discount" type="number"
                                               name="business-discount"
                                               class="business-discount form-control"
                                               id="business-discount">
                                    </div>
                                    <div class="form-group">
                                        <input ng-model="retailer.product.enableThresholdNotification" type="checkbox"
                                               name="business-threshold-notification"
                                               class="business-threshold-notification"
                                               id="business-threshold-notification">
                                        <label for="business-threshold-notification">Enable Threshold
                                            Notification</label>
                                    </div>
                                    <div class="f1-buttons">
                                        <button type="button" class="btn btn-previous">Previous</button>
                                        <button type="button" class="btn btn-next">Next</button>
                                    </div>

                                </fieldset>
                                <fieldset>
                                    <div id="fine-uploader-gallery"></div>

                                    <div class="f1-buttons">
                                        <button type="button" class="btn btn-previous">Previous</button>
                                        <button type="submit" class="btn btn-submit" ng-click="createProduct()">Submit
                                        </button>
                                    </div>

                                </fieldset>


                            </form>
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
    var galleryUploader = new qq.FineUploader({
        element: document.getElementById("fine-uploader-gallery"),
        template: 'qq-template-gallery',
        request: {
            endpoint: '/server/uploads'
        },
        thumbnails: {
            placeholders: {
                waitingPath: 'assets/fine-uploader/placeholders/waiting-generic.png',
                notAvailablePath: 'assets/fine-uploader/placeholders/not_available-generic.png'
            }
        },
        validation: {
            allowedExtensions: ['jpeg', 'jpg', 'gif', 'png']
        }
    });
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