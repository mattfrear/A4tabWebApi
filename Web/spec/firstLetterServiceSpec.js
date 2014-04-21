describe('firstLetterService tests', function () {
    var firstLetterService;

    beforeEach(function () {

        module('a4tab');

        inject(function (_firstLetterService_) {
            firstLetterService = _firstLetterService_;
        });
    });

    it('should have an addFirstLetters function', function () {
        expect(angular.isFunction(firstLetterService.addFirstLetters)).toBe(true);
    });

    it('should add first letters for unique artistNames', function () {
        var tabs = [{ artistName: "Bob" }, { artistName: "Blah" }, { artistName: 'Alice' }];
        firstLetterService.addFirstLetters(tabs, 'artistName');
        expect(tabs).toEqual([{ artistName: "Bob", firstLetter: 'B' }, { artistName: "Blah" }, { artistName: 'Alice', firstLetter: 'A' }]);
    });

});