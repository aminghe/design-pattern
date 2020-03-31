import Foundation

public class Select2 : SelectProtocol {
    
    public init() {}
    
    private var _title : String = "";

    public func setup(title : String) {
        self._title = title
    }
    
    public func show() {
        print("Select2 title is = \(_title)")
    }
    
}
