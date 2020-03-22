import Foundation


public class TransportationFactory : TransportationFactoryProtocol {
    
    public init() {

    }
    
    public func getInstance(type : TransportationType) -> TransportationProtocol {
        
        if(type == .airplane) {
            return Aireplane(number: 13123123, str: "asdaksndajsdn")
        }else if(type == .ship) {
            return Ship()
        }else{
            return Truck()
        }

    }
    
    
}
