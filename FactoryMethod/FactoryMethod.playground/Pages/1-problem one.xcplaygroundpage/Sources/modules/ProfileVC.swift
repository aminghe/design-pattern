import Foundation

public class ProfileVC {
    
    public init() {
        let service = ToastService()
        service.setMessage(message: "profile message")
        service.show()
    }
}
