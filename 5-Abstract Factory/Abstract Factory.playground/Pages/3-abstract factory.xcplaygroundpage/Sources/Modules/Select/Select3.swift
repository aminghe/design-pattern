import Foundation

public class Select3 : SelectProtocol {
    
    public init() {}
    
    private var _title : String = "";

    public func setup(title : String) {
        self._title = title
    }
    
    public func show() {
        print("Select3 title is = \(_title)")
    }
    
}
