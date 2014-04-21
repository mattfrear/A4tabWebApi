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

    it('should sort tabs by artistName', function () {
        var tabs = [{ artistName: "Bob" }, { artistName: "Blah" }, { artistName: 'Alice' }];
        sortService.sortTabs(tabs);
        expect(tabs).toEqual([{ artistName: 'Alice' }, { artistName: "Blah" }, { artistName: "Bob" }]);
    });

    it('should sort tabs by artistName then name', function () {
        var tabs = [{ artistName: "Bob" }, { artistName: "Blah", name: "Moo" }, { artistName: 'Blah', name: "Meow" }];
        sortService.sortTabs(tabs);
        expect(tabs).toEqual([{ artistName: 'Blah', name: "Meow" }, { artistName: "Blah", name: "Moo" }, { artistName: "Bob" }]);
    });

});