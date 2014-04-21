app.controller("recentCtrl", function ($scope, $http) {
    $http.get(app.urls.recent).success(function (data) {
        $scope.recentTabs = data;
    }).error(function () {
        $scope.error = "Couldn't load Recent tabs.";
    });
});