import UIKit

class LogService: NSObject {
    var debugMode: Bool = false
    
    static let shared = LogService()
    
    override init() {
        super.init()
    }
    
    func show(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        if debugMode {
            print("MuricUtilities", items, separator, terminator)
        }
    }
}
