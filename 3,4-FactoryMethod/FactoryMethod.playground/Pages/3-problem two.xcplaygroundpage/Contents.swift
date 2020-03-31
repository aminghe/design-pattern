//: [Previous](@previous)

import Foundation

let transportation = Transportation(type: .truck)
transportation.go(start: "tehran", end: "tabriz")
transportation.price()

let transportationShip = Transportation(type: .ship)
transportationShip.go(start: "tabriz", end: "abadan")
transportationShip.price()

let transportationAir = Transportation(type: .airplane)
transportationAir.go(start: "abadan", end: "tehran")
transportationAir.price()

//travel by truck tehran to tabriz
//2000000 toman
//travel by ship tabriz to abadan
//1240000000 toman
//travel by airplane abadan to tehran
//21300000 toman

//: [Next](@next)
