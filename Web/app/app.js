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

app.controller("tabsCtrl", function($scope, $http) {
    var limit = 100;
    var querystring = app.urls.tabs + "?fields=Tab.Id,Tab.Name,Artist.Id,Artist.Name&limit=" + limit + "&sort=Artist.Name&offset=";

    $http.get(querystring + "0").success(function (data) {
        $scope.tabs = data.tabs;

        for (var retrieved = data.tabs.length; retrieved < data.totalCount; retrieved += limit) {
            $http.get(querystring + retrieved).success(function (data) {
                $scope.tabs = $scope.tabs.concat(data.tabs);
            }).error(function () {
                $scope.error = "Couldn't load tabs.";
            });
        }

    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});

app.controller("tabCtrl", function($scope, $http, $routeParams, $rootScope) {
    
    $http.get(app.urls.tabs + $routeParams.id).success(function (data) {
        $scope.tab = data;
        $rootScope.title = data.Name;
    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});