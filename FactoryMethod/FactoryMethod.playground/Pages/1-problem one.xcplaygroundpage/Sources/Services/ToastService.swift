import Foundation

public class ToastService {
    
    private var _message : String = ""
    
    public init(message : String) {
        self.setMessage(message: message)
    }
    
    public func setMessage(message : String){
        self._message = message
    }
    
    public func show() {
        print(self._message)
    }
    
}
