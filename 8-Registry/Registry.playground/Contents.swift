import UIKit

class Employer {
    var firstname : String
    var lastname : String
    var age : Int?
    
    init(firstname : String, lastname :String) {
        self.firstname = firstname
        self.lastname = lastname
    }
    
    func setAge(age : Int) {
        self.age = age
    }
    
    func clone() -> Employer {
        let employ = Employer(firstname: self.firstname, lastname: self.lastname)
        employ.setAge(age: self.age ?? 0)
        return employ
    }
    
}


protocol EmployerRegistryProtocol {
    func get(key : String) -> Employer?
    func set(key : String, value : Employer)
}

class EmployerRegistry : EmployerRegistryProtocol {
    
    static var shared : EmployerRegistryProtocol = EmployerRegistry()
    
    private var _list : Dictionary<String, Employer> = [:]
    
    private init() {}
    
    func get(key: String) -> Employer? {
        if let item = _list[key] {
            return item.clone()
        }
        return nil
        
    }
    
    func set(key: String, value: Employer) {
        _list[key] = value
    }
    
}


let emplyerRgistry = EmployerRegistry.shared

let employ = Employer(firstname: "amin", lastname: "gheynarloo")

emplyerRgistry.set(key: "amin", value: employ)

let emplyamin = emplyerRgistry.get(key: "amin")
emplyamin?.firstname = "amin amin amin"

let emplyamin2 = emplyerRgistry.get(key: "amin")
print(emplyamin2?.firstname)

