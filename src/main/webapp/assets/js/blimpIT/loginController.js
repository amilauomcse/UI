angular.module('blimpIT').controller('blimpIT', ['$scope', '$http', '$cookies',
    function ($scope, $http, $cookies) {
        $scope.loginForm = {};
        $scope.logIn = function () {
            console.log($scope.loginForm);
            $scope.submitLogin();
        };

        $scope.submitLogin = function() {
            $.ajax({
                url: 'http://localhost:8280/usermanagement/signIn',
                type: 'POST',
                contentType: "application/json",
                data: JSON.stringify($scope.loginForm),
                headers: {
                    'Access-Control-Allow-Origin': '*'
                },
                success: function (results) {
                    console.log(results);
                },
                error: function (error) {
                    console.log(error);
                }
            });
          /*  $http({
                method: 'POST',
                url: 'http://172.17.0.1:8280/usermanagement/signIn',
                contentType: 'application/json',
                data: JSON.stringify($scope.loginForm),
                headers: {'Access-Control-Allow-Origin': '*'}
            }).then(function (result) {
                console.log(result);
            }, function (status) {
                console.log(status);
            });*/
        }
    }]);
