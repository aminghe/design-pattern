import Foundation

public class Aireplane : TransportationProtocol {
    
    init(number : Int, str : String) {
        
    }
    
    public func go(start: String, end: String) {
        print("travel with Aireplane \(start) to \(end)")
    }
    
    public func price() {
        print("price is 1222")
    }
        
}
