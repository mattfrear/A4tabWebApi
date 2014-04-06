describe('sortService tests', function () {
    var sortService;

    beforeEach(function () {

        module('a4tab');

        inject(function (_sortService_) {
            sortService = _sortService_;
        });
    });

    it('should have an sortTabs function', function () {
        expect(angular.isFunction(sortService.sortTabs)).toBe(true);
    });

    it('should sort tabs ', function () {
        var tabs = [{ artistName: "Bob" }, { artistName: "Blah" }];
        sortService.sortTabs(tabs);
        expect(tabs).toEqual([{ artistName: "Blah" }, { artistName: "Bob" }]);
    });
});