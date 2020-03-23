import Foundation


public protocol SelectFactoryProtocol {
    func getInstance(type : SelectType) -> SelectProtocol
}

public class SelectFactory : SelectFactoryProtocol {
    
    public init() {}
    
    public func getInstance(type : SelectType) -> SelectProtocol {
        if(type == .one){
            return Select1()
        }else if(type == .two){
            return Select2()
        }else {
            return Select3()
        }
    }
    
}
