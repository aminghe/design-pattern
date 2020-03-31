import Foundation

public protocol TransportationProtocol {
    func go(start : String, end : String)
    func price()
}
