import Foundation

public class ShopVC {
    
    public init(){
        let service = ToastService()
        service.setMessage(message: "shop message")
        service.show()
    }
    
}
