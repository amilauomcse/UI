angular.module('blimplt').controller('blimplt', ['$scope', '$http', '$cookies',
    function ($scope, $http, $cookies) {
        $scope.sideMenuCollapsed = false;

        $scope.retailer = {};
        $scope.retailer.product = {};
        $scope.retailer.productCategory = {};
        $scope.retailer.productList = [];
        $scope.addProduct = function(){
            $('#addProductModal').modal('show');

        };


        $scope.createProduct = function () {
            $.ajax({
                url: "http://localhost:3000/products",
                type: 'POST',
                // contentType: "application/json",
                data: {product:$scope.retailer.product},
                success: function (result) {
                    console.log(result);
                    $('#addProductModal').modal('hide');
                },
                error: function (xhr) {
                    $('#addProductModal').modal('hide');
                }
            });
        };

        $scope.loadProducts = function () {
            $.ajax({
                url: "http://localhost:3000/products",
                type: 'Get',
                contentType: "application/json",
                data: {type:"all"},
                success: function (result) {
                    result = JSON.parse(result);
                    $scope.$apply(function () {
                        $scope.retailer.productList = result.result;
                    });
                    console.log(result);
                },
                error: function (xhr) {
                }
            });
        };

        $scope.loadProducts();

        $scope.menuIconClicked = function(){
            if($scope.sideMenuCollapsed){
                $scope.sideMenuCollapsed = false;
                $('#sidebar').css('left','0px');
                $(".menu-icon").animate({left:'80px', opacity:1},300);

            }else{
                $scope.sideMenuCollapsed = true;
                $('#sidebar').css('left','-100px');
                $('.menu-icon').css('left','0px');
            }
        };
    }]);
