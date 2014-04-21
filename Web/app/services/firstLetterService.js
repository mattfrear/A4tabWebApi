app.service("firstLetterService", function () {
    return {
        addFirstLetters: function (tabs, propertyName) {
            var previousFirstLetter = '';
            for (var i = 0; i < tabs.length; i++) {
                var tab = tabs[i];
                var firstLetter = tab[propertyName].substr(0, 1);
                if (firstLetter !== previousFirstLetter) {
                    tab.firstLetter = firstLetter;
                    previousFirstLetter = firstLetter;
                }
            }
        }
    };
});