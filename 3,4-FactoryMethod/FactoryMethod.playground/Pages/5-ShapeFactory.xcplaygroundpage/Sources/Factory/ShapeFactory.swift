import Foundation

public class ShapeFactory : ShapeFactoryProtocol {
    
    public init() {}
    
    public func getShape(type : ShapeFactoryType) -> ShapeProtocol {
        
        if(type == .circle) {
            return Circle()
        }else if(type == .reqtangle) {
            return Rectangle()
        }else {
            return Square()
        }
        
        
    }
    
}
