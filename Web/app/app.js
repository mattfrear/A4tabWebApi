var app = angular.module("a4tab", ['ngRoute']);

app.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'pages/home.html',
            controller: 'recentCtrl'
        })
        .when('/tabs/', {
            templateUrl: 'pages/tabs.html',
            controller: 'tabsCtrl'
        })
        .when('/tabs/:id', {
            templateUrl: 'pages/tab.html',
            controller: 'tabCtrl'
        });
});

app.controller("recentCtrl", function ($scope, $http) {
    $http.get("http://localhost:1120/api/v1/tabs/recent").success(function(data) {
        $scope.recentTabs = data;
    }).error(function() {
        $scope.error = "Couldn't load Recent tabs.";
    });
});

app.controller("tabsCtrl", function($scope, $http) {
    $http.get("http://localhost:1120/api/v1/tabs/").success(function (data) {
        $scope.tabs = data;
    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});

app.controller("tabCtrl", function($scope, $http, $routeParams) {
    $scope.message = $routeParams.id;
});