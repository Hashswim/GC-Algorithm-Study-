import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let halfQueue = queue1 + queue2
    let totalQueue = halfQueue + halfQueue
    let find = halfQueue.reduce(0, +) / 2

    var tryCount = 0
    var start = 0, end = queue1.count
    
    if halfQueue.reduce(0, +) % 2 == 1{
        return -1
    }
    
    var now = totalQueue[start..<end].reduce(0, +)
    while true{
        if start == end || start + halfQueue.count + 1 == end || start >= halfQueue.count{
            return -1
        }
        
        if now < find {
            end += 1
            now += totalQueue[end-1]
        }else if now > find {
            now -= totalQueue[start]
            start += 1
        }else {
            return tryCount
        }
        
        tryCount += 1
    }
}
