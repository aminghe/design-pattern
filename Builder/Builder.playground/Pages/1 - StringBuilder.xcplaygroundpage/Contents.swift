//: [Previous](@previous)

import Foundation

var str1 = "amin"
var str2 = "gheynarloo"
var str3 = "12"
var str4 = "90.3"

var str : String = ""
str = "\(str1) \(str2) \(str3) \(str4)"
print(str)

// stringBuilder
class StringBuilder {
    
    private var _str : [String] = []
    
    func append(str : String) -> StringBuilder {
        _str.append(str)
        return self
    }
    
    func append(number : Int) -> StringBuilder {
        _str.append("\(number)")
        return self
    }
    
    func append(float : Float) -> StringBuilder {
        _str.append("\(float)")
        return self
    }
    
    func toString(separator : String = " ") -> String {
        let str = _str.joined(separator : separator)
        return str
    }
}

let strBuilder = StringBuilder()
        .append(str : "amin")
        .append(str : "gheynarloo")
        .append(number : 10)
        .append(float : 12.444).toString()
print(strBuilder)

let string = StringBuilder().append(float: 12.32).append(number: 13333).append(str: "amin").toString(separator: " & ")
print(string)
//: [Next](@next)
