var app = angular.module("a4tab", ['ngRoute']);

app.apiUrls = {
    // base: "http://localhost:1120/api/"
    base: "http://a4tabapi.azurewebsites.net/api/"
};

app.apiUrls.recent = app.apiUrls.base + "v1/tabs/recent";
app.apiUrls.tabs = app.apiUrls.base + "v1/tabs/";

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
