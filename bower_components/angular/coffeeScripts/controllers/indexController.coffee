class IndexController

  appDemo = angular.module('appDemo', [])
  sizeList = 0

  angularController:() ->
    appDemo.controller 'InstrumentosListadoCtrl', ($scope) ->
      $scope.model = [
        {
          marca: 'Fender'
          nombre: 'Galaxy s7'
          precio: 400
        }
        {
          marca: 'LeoVergara'
          nombre: 'Brandon Vergara Magaña'
          precio: 400
        }
        {
          marca: 'Brandon'
          nombre: 'Jugandon a con Angular'
          precio: 400
        }
      ]
      $scope.entero = 8
      $scope.sizeList = $scope.model.length
      $scope.registrar = ->
        if $scope.nombre? and $scope.marca? and $scope.precio?
          console.log "Hay nombre"
          $scope.model.push
              marca: $scope.marca
              nombre: $scope.nombre
              precio: $scope.precio
        else
          alert "Completa los datos porfavor"

        console.log $scope.nombre
        console.log $scope.marca
        console.log $scope.precio
        $scope.sizeList = $scope.model.length


  hello: () ->
    console.log("Saludo")

  start: () ->
    @angularController()
    console.log("Start")

new IndexController().start()
