import Foundation

public class ShopVC {
    
    public init(){
        let service = ToastServiceFactory(message: "shop message")
        service.show()
    }
    
}
