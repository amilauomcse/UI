angular.module('blimplt').controller('blimplt', ['$scope', '$http', '$cookies',
    function ($scope, $http, $cookies) {
        $scope.sideMenuCollapsed = false;

        $scope.product = {};
        $scope.addProduct = function(){
            $('#selectProductModel').modal('show');
        };

        $scope.selectProductCategory = function(){
            $('#selectProductModel').modal('hide');
            $('#addProductModal').modal('show');
        };

        $scope.menuIconClicked = function(){
            if($scope.sideMenuCollapsed){
                $scope.sideMenuCollapsed = false;
                $('#sidebar').css('left','0px');
                // $('.menu-icon').css('left','80px');
                // $("#sidebar").animate({left:'0px', opacity:1},1000);
                $(".menu-icon").animate({left:'80px', opacity:1},300);

            }else{
                $scope.sideMenuCollapsed = true;
                $('#sidebar').css('left','-100px');
                $('.menu-icon').css('left','0px');
            }
        };
    }]);
