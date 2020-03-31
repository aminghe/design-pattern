//: [Previous](@previous)

import Foundation

let factory = ButtonFactory()

let btn1 = factory.getInstance(type : .one)

btn1.setup(title : "text1")

let btn2 = factory.getInstance(type : .two)
btn2.setup(title: "text2")

btn1.show()
btn2.show()


//: [Next](@next)
