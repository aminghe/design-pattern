import Foundation

public enum ButtonType {
    case one
    case two
    case three
}

public class ButtonFactory {
    
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
