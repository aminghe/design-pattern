import Foundation

public class AbstractFactory : AbstractFactoryProtocol {
    
    public init() {}
        
    public func getTextfield() -> TextfieldFactoryProtocol {
        return TextfieldFactory()
    }
    
    public func getSelect() -> SelectFactoryProtocol {
        return SelectFactory()
    }
    
    public func getButton() -> ButtonFactoryProtocol {
        return ButtonFactory()
    }
    
}
