import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    return (1...number).map {
        let cnt = count($0)
        return cnt > limit ? power : cnt
    }.reduce(0, +)
}

func count(_ num: Int) -> Int {
    var count = 0
    var root = Int(sqrt(Double(num)))
    
    for i in 1...root {
        if num%i == 0 {
            count += 2
        }
    }
    
    return Double(num)/Double(root) == Double(root) ? count - 1 : count
}
