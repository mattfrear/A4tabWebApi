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
