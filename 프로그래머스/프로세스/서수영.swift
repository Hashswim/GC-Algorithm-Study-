import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities
    var count = 0
    var result = 0
    
    while result == 0 {
        for i in 0..<queue.count {
            if queue[i] == queue.max() {
                queue[i] = 0
                count += 1
                
                if i == location {
                    result = count
                    break
                }
            }
        }
    }
    
    return result
}
