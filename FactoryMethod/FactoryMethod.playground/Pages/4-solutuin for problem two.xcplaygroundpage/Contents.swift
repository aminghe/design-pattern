//: [Previous](@previous)

import Foundation


let Factory : TransportationFactoryProtocol = TransportationFactory()

let ship = Factory.getInstance(type: .ship)
let airplane = Factory.getInstance(type: .airplane)
let truck = Factory.getInstance(type: .truck)

ship.go(start: "tehran", end: "esfehan")
ship.price()

airplane.go(start: "esfehan", end: "Tabriz")
airplane.price()

truck.go(start: "Mashhad", end: "tehran")
truck.price()



//: [Next](@next)
