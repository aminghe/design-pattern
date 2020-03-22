import Foundation

public class ShopVC {
    
    public init(){
        let service = ToastService(message: "shop message")
//        service.setMessage(message: "shop message")
        service.show()
    }
    
}
