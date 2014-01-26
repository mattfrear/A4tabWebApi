var app = angular.module("a4tab", []);

app.controller("RecentCtrl", function ($scope, $http) {
    $http.get("http://localhost:1120/api/tabs").success(function(data) {
        $scope.recentTabs = data;
    }).error(function() {
        $scope.error = "Couldn't load Recent tabs.";
    });
});