app.controller("tabsCtrl", function ($scope, $http, tabsService, sortService, firstLetterService) {

    tabsService
        .getTabs()
        .then(function (data) {
            $scope.error = data.error;

            if (!data.tabs) {
                return;
            }

            var tabs = data.tabs;
            sortService.sortTabs(tabs);
            firstLetterService.addFirstLetters(tabs, 'artistName');
            $scope.tabs = tabs;
        });
});
