import Foundation

public class ProfileVC {
    
    public init() {
        let service = ToastServiceFactory(message : "profile message")
        service.show()
    }
}
