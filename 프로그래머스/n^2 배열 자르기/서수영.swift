import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var arr = [Int]()
    
    for i in Int(left)...Int(right) {
        arr.append(max(i%n, i/n) + 1)
    }
    
    return arr
}
