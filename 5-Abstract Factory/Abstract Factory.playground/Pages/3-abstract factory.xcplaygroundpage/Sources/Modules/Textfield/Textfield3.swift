import Foundation

public class Textfield3 : TextfieldProtocol {
    
    public init() {}
    
    private var _placeholder : String = "";

    public func setup(placeholder : String) {
        self._placeholder = placeholder
    }
    
    public func show() {
        print("Textfield3 placeholder is = \(_placeholder)")
    }
    
}
