var app = angular.module("a4tab", ['ngRoute']);

app.urls = {
    base: "http://localhost:1120/api/"
};

app.urls.recent = app.urls.base + "v1/tabs/recent";
app.urls.tabs = app.urls.base + "v1/tabs/";

 app.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'pages/home.html',
            controller: 'recentCtrl',
            title: 'Home'
        })
        .when('/tabs/', {
            templateUrl: 'pages/tabs.html',
            controller: 'tabsCtrl',
            title: 'All tabs'
        })
        .when('/tabs/:id', {
            templateUrl: 'pages/tab.html',
            controller: 'tabCtrl'
        });
});

app.run(['$location', '$rootScope', function ($location, $rootScope) {
    $rootScope.$on('$routeChangeSuccess', function (event, current, previous) {
        $rootScope.title = current.$$route.title;
    });
}]);

app.controller("recentCtrl", function ($scope, $http) {
    $http.get(app.urls.recent).success(function(data) {
        $scope.recentTabs = data;
    }).error(function() {
        $scope.error = "Couldn't load Recent tabs.";
    });
});

app.controller("tabsCtrl", function($scope, $http, tabsService) {

    tabsService
        .getTabs()
        .then(function(data) {
            $scope.error = data.error;
            $scope.tabs = data.tabs;
    });
    /*
    $http.get(querystring + "0").success(function (data) {
        $scope.tabs = data.tabs;

        for (var retrieved = data.tabs.length; retrieved < data.totalCount; retrieved += limit) {
            $http.get(querystring + retrieved).success(function (result) {
                $scope.tabs = $scope.tabs.concat(result.tabs);
                addFirstLetters($scope.tabs);
            }).error(function () {
                $scope.error = "Couldn't load tabs.";
            });
        }

    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
    */
    var addFirstLetters = function(tabs) {
        var previousFirstLetter = '';
        for (var i = 0; i < tabs.length;  i++) {
            var tab = tabs[i];
            var firstLetter = tab.artistName.substr(0, 1);
            if (firstLetter !== previousFirstLetter) {
                tab.firstLetter = firstLetter;
                previousFirstLetter = firstLetter;
            }
        }
    };
});

app.service("tabsService", function ($q, $http) {

    return {
        getTabs: function () {
            var dfd = $q.defer();

            var limit = 10;
            var querystring = app.urls.tabs + "?fields=Tab.Id,Tab.Name,Artist.Id,Artist.Name&limit=" + limit + "&sort=Artist.Name&offset=";

    //            $http.get(querystring + "0").success(function (data) {
    //                dfd.resolve(data);
    //            });

            var response = { error: '', tabs: []};
            var tabs = [];
            $http.get(querystring + "0").success(function (data) {
                tabs = data.tabs;

                for (var retrieved = data.tabs.length; retrieved < data.totalCount; retrieved += limit) {
                    $http.get(querystring + retrieved).success(function (result) {
                       tabs = tabs.concat(result.tabs);
                        // addFirstLetters($scope.tabs);

                       if (tabs.length === data.totalCount) {
                           response.tabs = tabs;
                           dfd.resolve(response);
                       }

                    }).error(function () {
                        response.error = "Couldn't load tabs.";
                        dfd.resolve(response);
                    });
                }
            }).error(function () {
                response.error = "Couldn't load tabs.";
                dfd.resolve(response);
            });

            return dfd.promise;
        }
    };
});

app.controller("tabCtrl", function($scope, $http, $routeParams, $rootScope) {
    
    $http.get(app.urls.tabs + $routeParams.id).success(function (data) {
        $scope.tab = data;
        $rootScope.title = data.Name;
    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});