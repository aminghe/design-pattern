//: [Previous](@previous)

import Foundation

class Database {
    
    static var shared : Database = Database(name: "mainObject")
    
    private init(name : String) {
        
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


let db = Database.shared
db.status()

let db2 = Database.shared
db2.status()

let db3 = Database.shared
db2.status()

//create object mainObject
//connected 2020-03-20 05:33:16 +0000
//connected 2020-03-20 05:33:16 +0000
//connected 2020-03-20 05:33:16 +0000
