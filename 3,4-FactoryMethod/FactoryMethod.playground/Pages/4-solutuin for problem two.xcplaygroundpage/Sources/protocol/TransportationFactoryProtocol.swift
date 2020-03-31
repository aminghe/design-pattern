import Foundation

public protocol TransportationFactoryProtocol {
    func getInstance(type : TransportationType) -> TransportationProtocol
}
