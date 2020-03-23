//: [Previous](@previous)

import Foundation

//let buttonFactory = ButtonFactory()
//let btn1 = buttonFactory.getInstance(type: .one)
//
//let textFieldFactory = TextfieldFactory()
//let textfield1 = textFieldFactory.getInstance(type: .two)

let abstractFactory = AbstractFactory()

let buttonFactory = abstractFactory.getButton()
let btn1 = buttonFactory.getInstance(type: .one)
btn1.setup(title: "title")
let btn2 = buttonFactory.getInstance(type: .two)

let textFieldFactory = abstractFactory.getTextfield()
let textfield1 = textFieldFactory.getInstance(type: .one)
textfield1.setup(placeholder: "placeholder")
let textfield2 = textFieldFactory.getInstance(type: .two)


//: [Next](@next)
