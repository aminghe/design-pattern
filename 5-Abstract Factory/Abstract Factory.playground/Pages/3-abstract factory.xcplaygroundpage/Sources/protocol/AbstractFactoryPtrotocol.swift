import Foundation

public protocol AbstractFactoryProtocol {
    func getTextfield() -> TextfieldFactoryProtocol
    func getSelect() -> SelectFactoryProtocol
    func getButton() -> ButtonFactoryProtocol
}
