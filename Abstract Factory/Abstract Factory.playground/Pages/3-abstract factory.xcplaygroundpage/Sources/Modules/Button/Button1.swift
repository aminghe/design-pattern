import Foundation

public class Button1 : ButtonProtocol {
    
    public init() {}
    private var _title : String = "";

    public func setup(title : String) {
        self._title = title
    }
    
    public func show() {
        print("Button1 title is = \(_title)")
    }
    
}
