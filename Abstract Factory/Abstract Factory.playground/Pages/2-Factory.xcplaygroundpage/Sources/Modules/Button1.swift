import Foundation
//import UIKit

public class Button1 : ButtonProtocol {
    
    public init() {}
    private var _title : String = "";
    
//    private let button : UIButton = {
//       let btn = UIButton()
//        btn.backgroundColor = .green
//        return btn
//    }()
//
    public func setup(title : String) {
        self._title = title
    }
    
    public func show() {
        print("Button1 title is = \(_title)")
    }
    
}
