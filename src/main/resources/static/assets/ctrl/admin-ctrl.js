app = angular.module("admin-app", ["ngRoute"]);

app.config(function ($routeProvider) {
    $routeProvider
        .when("/student", {
            templateUrl: "/home/student/index.html",
            controller: "student-ctrl"
        })
        .otherwise({
            template:"<h1 class='text-center'>Java</h1>"
        });
});