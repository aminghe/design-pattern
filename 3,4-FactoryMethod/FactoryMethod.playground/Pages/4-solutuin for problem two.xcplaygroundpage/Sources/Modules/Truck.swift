import Foundation

public class Truck : TransportationProtocol {
    
    public func go(start: String, end: String) {
        print("travel with Truck \(start) to \(end)")

    }
    
    public func price() {
        print("price is 1010")
    }
    
    
    
    
}
