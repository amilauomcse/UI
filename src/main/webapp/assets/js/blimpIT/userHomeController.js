angular.module('blimpIT').controller('blimpIT', ['$scope', '$http', '$cookies',
    function ($scope, $http, $cookies) {
        $scope.sideMenuCollapsed = true;
        $scope.menuIconClicked = function(){
            if($scope.sideMenuCollapsed){
                $scope.sideMenuCollapsed = false;
                $('#sidebar').css('left','0px');
                $(".menu-icon").animate({left:'80px', opacity:1},300);

            }else{
                $scope.sideMenuCollapsed = true;
                $('#sidebar').css('left','-125px');
                $('.menu-icon').css('left','0px');
            }
        };
        $scope.menuIconClicked();

    }]);
