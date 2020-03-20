//: [Previous](@previous)

import Foundation

class Database {
    
    init(name : String) {
        
        print("create object \(name)")
        // connet database
        for i in 0...100000 {
            _ = i
        }
        
    }
    
    func status() {
        print("connected \(Date())")
    }
    
}


let db = Database(name: "db1")
db.status()

let db2 = Database(name: "db2")
db2.status()

let db3 = Database(name: "db3")
db2.status()


//create object db1
//connected 2020-03-20 05:19:40 +0000
//create object db2
//connected 2020-03-20 05:19:45 +0000
//create object db3
//connected 2020-03-20 05:19:50 +0000
