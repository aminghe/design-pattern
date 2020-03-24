//: [Previous](@previous)

import Foundation
import UIKit

// 1-
class Employer {
    
    private var _firstname : String
    
    private var _lastname : String?
    
    init(firstname : String) {
        self._firstname = firstname
    }
    
    func setLastname(lastname : String) { self._lastname = lastname }
    func getLastname() -> String { return _lastname ?? "" }
    
    class EmployerBuilder {
        
        private var _employer : Employer!
        
        init(firstname : String) {
            self._employer = Employer(firstname: firstname)
        }
        
        func setLastname(lastname : String) -> EmployerBuilder {
            self._employer.setLastname(lastname: lastname)
            return self
        }
        
        func build() -> Employer {
            return _employer
        }
        
    }
    
}

let employ = Employer.EmployerBuilder(firstname: "amin")
.setLastname(lastname: "gheynarloo")
.build()

print(employ.getLastname())


// 2 -
class EmployerOptional {

    var firstname : String?
    var lastname : String?

    typealias type = (EmployerOptional) -> (Void)

    init(build : type) {
        build(self)
    }
}

let employOPT = EmployerOptional { (employ) in
    employ.firstname = "amin"
    employ.lastname  = "gheynarloo"
}
print(employOPT.firstname)


// 3 - UITalbeview

protocol Builder {}
extension Builder {
    func with(config : (Self) -> Void) -> Self {
        config(self)
        return self
    }
}
extension UITableView : Builder {}

let tableview = UITableView(frame: .zero, style: .grouped).with { (tableview) in
    
    tableview.backgroundColor = .red
    tableview.tableFooterView = UIView()
    
}

// 4 = (Self) -> Void)

typealias ff = (Int) -> (Void)

let a : ff = { value in
    print("\(value * 10)")
}

a(12)






//: [Next](@next)
