import Foundation

public class Textfield2 : TextfieldProtocol {
    
    public init() {}
    
    private var _placeholder : String = "";

    public func setup(placeholder : String) {
        self._placeholder = placeholder
    }
    
    public func show() {
        print("Textfield2 placeholder is = \(_placeholder)")
    }
    
}
