//: [Previous](@previous)

import Foundation

class Database {
    
    private static var _shared : Database?
    
    private init(name : String) {
        
        print("create object \(name)")
        // connet database
        for i in 0...100000 {
            _ = i
        }
        
    }
    
    public static var shared : Database {
        get {
            
            if(_shared == nil){
                // here
                DispatchQueue.global().sync {
                    if(_shared == nil){
                        _shared = Database(name: "Main")
                    }
                }
            }
            return _shared!
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
