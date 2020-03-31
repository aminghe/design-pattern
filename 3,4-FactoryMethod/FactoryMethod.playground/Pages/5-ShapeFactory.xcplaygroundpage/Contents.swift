//: [Previous](@previous)

import Foundation


let factory : ShapeFactoryProtocol = ShapeFactory()

let circle = factory.getShape(type: .circle)
let square = factory.getShape(type: .square)
let reqtangle = factory.getShape(type: .reqtangle)



circle.draw()
square.draw()
reqtangle.draw()

//: [Next](@next)
