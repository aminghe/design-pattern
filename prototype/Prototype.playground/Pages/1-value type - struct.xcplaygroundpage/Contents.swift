//: [Previous](@previous)

import Foundation

struct Location {
    
    var lat : Float
    var long : Float
    var list : Array<String> = []
    mutating func loadData() {
        print("loadData: \(Date())")
        for i in 1...100000 {
            _ = i
        }
        self.list.append("tehran")
        self.list.append("tabriz")
        self.list.append("mashhad")
        self.list.append("shiraz")
        print("END loadData: \(Date())")
    }
    
}


var location = Location(lat: 1.1, long: 2.2)
location.loadData()
print(location)

var location2 = location
location2.lat = 4.4
location2.long = 5
print(location2)
