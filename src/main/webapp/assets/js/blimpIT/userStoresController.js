angular.module('blimpIT').controller('blimpIT', ['$scope', '$http', '$cookies',
    function ($scope, $http, $cookies) {
        $scope.sideMenuCollapsed = true;
        $scope.user = {};
        $scope.user.storeList = [];

        $scope.addNewStore = function () {
            $scope.user.storeList.splice(0, 0, {new: true});
        };

        $scope.saveNewStore = function (store) {
            $.ajax({
                url: "http://localhost:3000/stores",
                type: 'POST',
                // contentType: "application/json",
                data: {store: {name: store.name}},
                success: function (result) {
                    $scope.loadStores();
                },
                error: function (xhr) {
                }
            });
        };
        $scope.loadStores = function () {
            $.ajax({
                url: "http://localhost:3000/stores",
                type: 'Get',
                contentType: "application/json",
                data: {type: "all"},
                success: function (result) {
                    $scope.user.storeList = [];
                    result = JSON.parse(result);
                    $scope.$apply(function () {
                        $scope.user.storeList = result.result;
                    });
                    console.log(result);
                },
                error: function (xhr) {
                }
            });
        };
        $scope.menuIconClicked = function () {
            if ($scope.sideMenuCollapsed) {
                $scope.sideMenuCollapsed = false;
                $('#sidebar').css('left', '0px');
                $(".menu-icon").animate({left: '80px', opacity: 1}, 300);

            } else {
                $scope.sideMenuCollapsed = true;
                $('#sidebar').css('left', '-125px');
                $('.menu-icon').css('left', '0px');
            }
        };

        $scope.loadStores();
        $scope.menuIconClicked();

    }]);