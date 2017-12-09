angular.module('blimplt').controller('blimplt', ['$scope', '$http', '$cookies',
    function ($scope, $http, $cookies) {
        $scope.addProduct = function(){
            $('#selectProductModel').modal('show');
        }

        $scope.selectProductCategory = function(){
            $('#selectProductModel').modal('hide');
            $('#addProductModal').modal('show');
        }
    }]);
