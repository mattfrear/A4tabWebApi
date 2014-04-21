app.service("sortService", function () {
    return {
        sortTabs: function (tabs) {

            var compare = function (a, b) {
                if (a.artistName === b.artistName) {
                    return a.name.localeCompare(b.name);
                }
                return a.artistName.localeCompare(b.artistName);
            };

            tabs.sort(compare);
        },
    };
});