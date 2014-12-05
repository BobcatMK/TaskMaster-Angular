describe("Test routes",function() {
    var $scope = null;
    var ctrl = null;

    beforeEach(angular.mock.module("TaskMasterApp"));
    var r,l,rS,hB;

    beforeEach(angular.mock.inject(function($route,$location,$rootScope,$httpBackend) {
        r = $route;
        l = $location;
        rS = $rootScope;
        hB = $httpBackend;
    }));

    it("should test / route",function() {
        expect(r.current).toBeUndefined();

        l.path("/");
        hB.expectGET("/assets/angular/views/home.html.slim").respond(200);
        rS.$digest();

        expect(r.current.templateUrl).toBe("/assets/angular/views/home.html.slim");
    });

    it("should test /home route",function() {
        expect(r.current).toBeUndefined();

        l.path("/home");
        hB.expectGET("/assets/angular/views/home.html.slim").respond(200);
        rS.$digest();

        expect(r.current.templateUrl).toBe("/assets/angular/views/home.html.slim");
    });

    it("should redirect any unknown url to home page",function() {
        expect(r.current).toBeUndefined();

        l.path("/lubieskakaciprac");
        hB.expectGET("/assets/angular/views/home.html.slim").respond(200);
        rS.$digest();
        expect(r.current.templateUrl).toBe("/assets/angular/views/home.html.slim");

        l.path("/dungeonkeeper");
        hB.expectGET("/assets/angular/views/home.html.slim").respond(200);
        rS.$digest();
        expect(r.current.templateUrl).toBe("/assets/angular/views/home.html.slim");
    })
});