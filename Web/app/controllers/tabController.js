app.controller("tabCtrl", function ($scope, $http, $routeParams, $rootScope) {

    $http.get(app.urls.tabs + $routeParams.id).success(function (data) {
        $scope.tab = data;
        $rootScope.title = data.Name;
    }).error(function () {
        $scope.error = "Couldn't load tabs.";
    });
});