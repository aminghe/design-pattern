import Foundation

public class HomeVC {
    
    public init() {
        let service = ToastService(message: "home message")
//        service.setMessage(message: "home message")
        service.show()
    }
}
