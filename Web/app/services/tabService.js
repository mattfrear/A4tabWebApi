app.service("tabsService", function ($q, $http) {

    return {
        getTabs: function () {
            var dfd = $q.defer();

            var limit = 100;
            var querystring = app.urls.tabs + "?fields=Tab.Id,Tab.Name,Artist.Id,Artist.Name&limit=" + limit + "&sort=Artist.Name&offset=";

            var response = { error: '', tabs: [] };
            var tabs = [];
            $http.get(querystring + "0").success(function (data) {
                tabs = data.tabs;

                for (var retrieved = data.tabs.length; retrieved < data.totalCount; retrieved += limit) {
                    $http.get(querystring + retrieved).success(function (result) {
                        tabs = tabs.concat(result.tabs);

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
        },
    };
});