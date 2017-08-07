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
      $scope.cost = 0
      $scope.registrar = ->
        console.log "Inicia"
        if $scope.nombre? and $scope.marca? and $scope.precio?
          console.log "Hay nombre"
          $scope.model.push
              marca: $scope.marca
              nombre: $scope.nombre
              precio: parseFloat($scope.precio)

        else
          alert "Completa los datos porfavor"

        console.log $scope.nombre
        console.log $scope.marca
        console.log $scope.precio
        $scope.sizeList = $scope.model.length
        $scope.cost = 0
        for iterator in $scope.model
          $scope.cost = $scope.cost + iterator.precio
        console.log $scope.model.precio

      $scope.remove = (index) ->
        console.log index
        console.log "Removiendo..."
        $scope.model.splice(index, 1)

  hello: () ->
    console.log("Saludo")

  start: () ->
    @angularController()
    console.log("Start")

new IndexController().start()
