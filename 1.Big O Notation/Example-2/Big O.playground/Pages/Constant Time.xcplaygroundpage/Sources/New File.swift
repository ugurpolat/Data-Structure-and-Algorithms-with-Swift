import Foundation

public extension Array where Element == Int {
    func startsWithZero() -> Bool {
        guard self.isEmpty == false else {
            return false
        }
        
        return self.first == 0 ? true : false
    }
}


