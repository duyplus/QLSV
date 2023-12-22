app = angular.module("admin-app", ["ngRoute"]);

app.config(function ($routeProvider) {
    $routeProvider
        .when("/student", {
            templateUrl: "/home/student/index.html",
            controller: "student-ctrl"
        })
        .when("/product", {
            templateUrl: "/home/product/index.html",
            controller: "product-ctrl"
        })
        .when("/category", {
            templateUrl: "/home/category/index.html",
            controller: "category-ctrl"
        })
        .otherwise({
            template:"<h1 class='text-center'>Java 6</h1>"
        });
});