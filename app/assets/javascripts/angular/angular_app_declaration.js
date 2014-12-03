TaskMasterApp = angular.module("TaskMasterApp",['ngResource','ngRoute'])
    .config(function($routeProvider) {
        $routeProvider.when("/",{
            templateUrl: '/assets/angular/views/home.html.slim'
        });
        $routeProvider.when("/home",{
            templateUrl: "/assets/angular/views/home.html.slim"
        })        
        $routeProvider.otherwise({
            templateUrl: '/assets/angular/views/home.html.slim'
        })
    })