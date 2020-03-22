import Foundation

public class ToastServiceFactory {
    
    private var _toastService : ToastService!
    
    public init(message : String) {
        _toastService = ToastService(message: message, description: "")
    }
    
    public func show() {
        _toastService.show()
    }
    
}
