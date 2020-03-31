import Foundation

public class Button2  {
    
    public init() {}
    
    private var _title : String = "";
    
    public func setup(title : String) {
        self._title = title
    }
    
    public func show() {
        print("Button2 title is = \(_title)")
    }
    
}
