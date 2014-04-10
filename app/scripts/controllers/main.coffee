'use strict'

angular.module('taskApp')
  .controller 'ProjectCtrl', ($scope, $http) ->
    $http.get("http://localhost:3000/projects.json")
      .success((res) =>
        console.log (res)
        $scope.projects = res
      )

