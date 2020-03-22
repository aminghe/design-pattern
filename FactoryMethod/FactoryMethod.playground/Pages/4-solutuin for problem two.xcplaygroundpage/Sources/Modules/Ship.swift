import Foundation

public class Ship : TransportationProtocol {
    
    public func go(start: String, end: String) {
        print("travel with Ship \(start) to \(end)")
    }
    
    public func price() {
        print("price is 1000000")
    }
}
