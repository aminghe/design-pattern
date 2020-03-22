import Foundation

public class ProfileVC {
    
    public init() {
        let service = ToastService(message : "profile message")
//        service.setMessage(message: "profile message")
        service.show()
    }
}
