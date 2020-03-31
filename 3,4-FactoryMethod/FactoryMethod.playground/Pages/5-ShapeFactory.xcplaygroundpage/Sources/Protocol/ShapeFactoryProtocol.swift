import Foundation

public protocol ShapeFactoryProtocol {
    func getShape(type : ShapeFactoryType) -> ShapeProtocol
}
