import Foundation

public class Textfield1 : TextfieldProtocol {
    
    public init() {}
    
    private var _placeholder : String = "";

    public func setup(placeholder : String) {
        self._placeholder = placeholder
    }
    
    public func show() {
        print("Textfield1 placeholder is = \(_placeholder)")
    }
    
}
