import Foundation

public class Button3 {

    public init() {}
    
    private var _title : String = "";
    
    public func setup(title : String) {
        self._title = title
    }
    
    public func show() {
        print("Button3 title is = \(_title)")
    }
    
}
