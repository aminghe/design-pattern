import Foundation

public protocol ButtonFactoryProtocol {
    func getInstance(type : ButtonType) -> ButtonProtocol
}

public class ButtonFactory : ButtonFactoryProtocol {
    
    public init() {}
    
    public func getInstance(type : ButtonType) -> ButtonProtocol {
        if(type == .one){
            return Button1()
        }else if(type == .two){
            return Button2()
        }else {
            return Button3()
        }
    }
    
}
