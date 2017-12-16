angular.module('blimpIT').controller('blimpIT', ['$scope', '$http', '$cookies','$timeout', '$q', '$log',
    function ($scope, $http, $cookies,$timeout, $q, $log) {
        $scope.sideMenuCollapsed = true;
        $scope.user = {};
        $scope.user.storeList = [];
        // var $scope = this;

        $scope.simulateQuery = false;
        $scope.isDisabled    = false;

        $scope.repos         = loadAll();
        $scope.querySearch   = querySearch;
        $scope.selectedItemChange = selectedItemChange;
        $scope.searchTextChange   = searchTextChange;

        // ******************************
        // Internal methods
        // ******************************

        /**
         * Search for repos... use $timeout to simulate
         * remote dataservice call.
         */
        function querySearch (query) {
            var results = query ? $scope.repos.filter( createFilterFor(query) ) : $scope.repos,
                deferred;
            if ($scope.simulateQuery) {
                deferred = $q.defer();
                $timeout(function () { deferred.resolve( results ); }, Math.random() * 1000, false);
                return deferred.promise;
            } else {
                return results;
            }
        }

        function searchTextChange(text) {
            $log.info('Text changed to ' + text);
        }

        function selectedItemChange(item) {
            $log.info('Item changed to ' + JSON.stringify(item));
        }

        /**
         * Build `components` list of key/value pairs
         */
        function loadAll() {
            var repos = [
                {
                    'name'      : 'AngularJS',
                    'url'       : 'https://github.com/angular/angular.js',
                    'watchers'  : '3,623',
                    'forks'     : '16,175',
                },
                {
                    'name'      : 'Angular',
                    'url'       : 'https://github.com/angular/angular',
                    'watchers'  : '469',
                    'forks'     : '760',
                },
                {
                    'name'      : 'AngularJS Material',
                    'url'       : 'https://github.com/angular/material',
                    'watchers'  : '727',
                    'forks'     : '1,241',
                },
                {
                    'name'      : 'Angular Material',
                    'url'       : 'https://github.com/angular/material2',
                    'watchers'  : '727',
                    'forks'     : '1,241',
                },
                {
                    'name'      : 'Bower Material',
                    'url'       : 'https://github.com/angular/bower-material',
                    'watchers'  : '42',
                    'forks'     : '84',
                },
                {
                    'name'      : 'Material Start',
                    'url'       : 'https://github.com/angular/material-start',
                    'watchers'  : '81',
                    'forks'     : '303',
                }
            ];
            return repos.map( function (repo) {
                repo.value = repo.name.toLowerCase();
                return repo;
            });
        }

        /**
         * Create filter function for a query string
         */
        function createFilterFor(query) {
            var lowercaseQuery = angular.lowercase(query);

            return function filterFn(item) {
                return (item.value.indexOf(lowercaseQuery) === 0);
            };

        }
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