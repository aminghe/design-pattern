import Foundation

public class HomeVC {
    
    public init() {
        let service = ToastService()
        service.setMessage(message: "home message")
        service.show()
    }
}
