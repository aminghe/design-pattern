//: [Previous](@previous)

import Foundation

class Employee {
    
    private var _firstName : String; //required
    private var _lastName : String;  //required
    private var _age : Int;          //required
    private var _personalId : Int;   //required
    
    private var _phone : String?;     //optional
    private var _address : String?;   //optional
    private var _mail : String?;      //optional

    init(firstName : String, lastname : String, age : Int, personalId : Int) {
        self._firstName = firstName
        self._lastName = lastname
        self._age = age
        self._personalId = personalId
    }
    
    func setPhone(phone : String) {
        self._phone = phone
    }
    
    func setAddress(address : String) {
        self._address = address
    }
    
    func setMail(mail : String) {
        self._mail = mail
    }
    
    func getAge() -> String { return "\(self._age)" }
}

class EmployeeBuilder {
    
    private var _firstName : String; //required
    private var _lastName : String;  //required
    private var _age : Int;          //required
    private var _personalId : Int;   //required
    
    private var _phone : String?;     //optional
    private var _address : String?;   //optional
    private var _mail : String?;      //optional

    init(firstName : String, lastname : String, age : Int, personalId : Int) {
        self._firstName = firstName
        self._lastName = lastname
        self._age = age
        self._personalId = personalId
    }
    
    func setPhone(phone : String) -> EmployeeBuilder {
        self._phone = phone
        return self
    }
    
    func setAddress(address : String) -> EmployeeBuilder {
        self._address = address
        return self
    }
    
    func setMail(mail : String) -> EmployeeBuilder {
        self._mail = mail
        return self
    }
    
    func build() -> Employee {
        let employee = Employee(firstName: self._firstName, lastname: self._lastName, age: self._age, personalId: self._personalId)
        employee.setAddress(address: self._address ?? "")
        employee.setMail(mail: self._mail ?? "")
        employee.setPhone(phone: self._phone ?? "")
        return employee
    }
}



class EmployeeBuilder2 {
    
    private var _employee : Employee!
    
    init(firstName : String, lastname : String, age : Int, personalId : Int) {
        self._employee = Employee(firstName: firstName, lastname: lastname, age: age, personalId: personalId)
    }
    
    func setPhone(phone : String) -> EmployeeBuilder2 {
        self._employee.setPhone(phone: phone)
        return self
    }
    
    func setAddress(address : String) -> EmployeeBuilder2 {
        self._employee.setAddress(address: address)
        return self
    }
    
    func setMail(mail : String) -> EmployeeBuilder2 {
        self._employee.setMail(mail: mail)
        return self
    }
    
    func build() -> Employee {
        return _employee
    }
    
    
}


var employ = Employee(firstName: "amin", lastname: "gheynarloo", age: 30, personalId: 12222)
employ.setMail(mail: "amin.gheynarloo")
employ.setAddress(address: "tehran")

print(employ.getAge())


let employee =
    EmployeeBuilder(firstName: "amin", lastname: "gheynarloo", age: 20, personalId: 12222)
        .setAddress(address: "tehran")
        .setMail(mail: "amin.gheynarloo")
        .setPhone(phone: "0999999")
        .build()
print(employee.getAge())


let employee2 =
EmployeeBuilder2(firstName: "amin", lastname: "gheynarloo", age: 20, personalId: 12222)
    .setAddress(address: "tehran")
    .setMail(mail: "amin.gheynarloo")
    .setPhone(phone: "0999999")
    .build()
print(employee2.getAge())

//: [Next](@next)
