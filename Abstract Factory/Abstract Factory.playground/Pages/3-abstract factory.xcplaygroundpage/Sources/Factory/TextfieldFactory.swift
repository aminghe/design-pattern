import Foundation

public protocol TextfieldFactoryProtocol {
    func getInstance(type : TextfieldType) -> TextfieldProtocol
}

public class TextfieldFactory : TextfieldFactoryProtocol {
    
    public init() {}
    
    public func getInstance(type : TextfieldType) -> TextfieldProtocol {
        if(type == .one){
            return Textfield1()
        }else if(type == .two){
            return Textfield2()
        }else {
            return Textfield3()
        }
    }
    
}
