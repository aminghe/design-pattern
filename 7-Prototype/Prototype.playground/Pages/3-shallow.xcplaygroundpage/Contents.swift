//: [Previous](@previous)

import Foundation


class ShallowModel {
    var x : Int = 10
}

class Shallow {
    
    var model : ShallowModel = ShallowModel()
    private var _name : String = ""
    
    init(name : String) {
        _name = name
    }
    
    func clone() -> Shallow {
        
        let shallow = Shallow(name: self._name)
        shallow.model = self.model
        return shallow
        
    }
}

let shallow = Shallow(name: "shallow")
shallow.model.x = 10
print(shallow.model.x)


let shallow2 = shallow.clone()
shallow2.model.x = 20
print(shallow2.model.x)


print(shallow.model.x)
