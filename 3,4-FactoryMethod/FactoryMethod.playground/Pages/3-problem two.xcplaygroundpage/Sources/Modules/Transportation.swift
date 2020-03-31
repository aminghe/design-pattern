import Foundation

public enum TransportationType {
    case ship
    case truck
    case airplane
}

public class Transportation {
    
    private var _type : TransportationType?
    
    public init(type : TransportationType) {
        self._type = type
    }
    
    public func go(start : String, end : String) {
        
        if let type = _type {
            if(type == .truck) {
                // algorithm
                print("travel by truck \(start) to \(end)")
            }else if(type == .ship) {
                // ship algorithm
                print("travel by ship \(start) to \(end)")
            }else if(type == .airplane) {
                // airplane algorithm
                print("travel by airplane \(start) to \(end)")

            }
        }
        
        
        
    }
    
    public func price() {
       
        if let type = _type {
            if(type == .truck){
                print("2000000 toman")
            }else if(type == .ship){
                print("1240000000 toman")
            }else if(type == .airplane){
                print("21300000 toman")
            }
        }
        
    }
    
}
