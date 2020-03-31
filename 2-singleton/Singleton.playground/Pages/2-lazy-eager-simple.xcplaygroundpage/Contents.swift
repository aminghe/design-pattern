//: [Previous](@previous)

import Foundation

class LazyTest {
    
    init(name : String) {
        print(name)
    }
}

class Database {
    
    let simple : LazyTest = LazyTest(name : "simple")
    lazy var lazyVarible : LazyTest = LazyTest(name : "lazy")
    static var staticVarible : LazyTest = LazyTest(name : "statis")
    
    init() {
        print("create object database")
    }
    
    func status() {
        print(lazyVarible)
    }
}

let db = Database()
Database.staticVarible
//db.lazyVarible

