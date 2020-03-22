import Foundation

public class HomeVC {
    
    public init() {
        let service = ToastServiceFactory(message: "home message")
        service.show()
    }
}
