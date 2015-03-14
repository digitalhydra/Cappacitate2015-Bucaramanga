// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let numeroAsistentes = 80
let logistica = 5

var totalPublico = numeroAsistentes + logistica

class Carro{
    var marca:String = ""
    var modelo:String = ""
    var placa:String = ""
    
    func inicializar (){
        marca="mazda"
        modelo="2014"
        placa = "HRF888"
    }
}

var miCarro = Carro()
miCarro.inicializar()

println("Mi carro es de marca \(miCarro.marca)")

