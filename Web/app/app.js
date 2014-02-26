var app = angular.module("a4tab", ['ngRoute']);

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
    $http.get("http://localhost:1120/api/v1/tabs/recent").success(function(data) {
        $scope.recentTabs = data;
    }).error(function() {
        $scope.error = "Couldn't load Recent tabs.";
    });
});

app.controller("tabsCtrl", function($scope, $http) {
    $http.get("http://localhost:1120/api/v1/tabs/").success(function (data) {
        $scope.tabs = data.tabs;
    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});

app.controller("tabCtrl", function($scope, $http, $routeParams, $rootScope) {
    
    $http.get("http://localhost:1120/api/v1/tabs/" + $routeParams.id).success(function (data) {
        $scope.tab = data;
        $rootScope.title = data.Name;
    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});