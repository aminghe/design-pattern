//: [Previous](@previous)

import Foundation


class EmployerModel {
    var firstname : String
    var lastname : String
    init(firstname : String, lastname : String) {
        self.firstname = firstname
        self.lastname = lastname
    }
}

class Employer {
    
    private var _list : Array<EmployerModel> = []
    
    init() {
        
    }
    
    func loadData() {
        
        let employe1 = EmployerModel(firstname: "amin1", lastname: "gheynarloo1")
        self._list.append(employe1)
        
        let employe2 = EmployerModel(firstname: "amin2", lastname: "gheynarloo2")
        self._list.append(employe2)
        
        let employe3 = EmployerModel(firstname: "amin3", lastname: "gheynarloo3")
        self._list.append(employe3)
        
        let employe4 = EmployerModel(firstname: "amin4", lastname: "gheynarloo4")
        self._list.append(employe4)

    }
    
    func getCount() -> Int { return _list.count }
    func addItem(firstname : String, lastname : String) {
        self._list.append(EmployerModel(firstname: firstname, lastname: lastname))
    }
    
    
    func clone() -> Employer {
        let employ = Employer()
        employ._list = self._list
        return employ
    }
}


let employ = Employer()
employ.loadData()
print(employ.getCount())


let employ2 = employ.clone()
employ2.addItem(firstname: "amin5", lastname: "amin5")
print(employ2.getCount())


print(employ.getCount())
