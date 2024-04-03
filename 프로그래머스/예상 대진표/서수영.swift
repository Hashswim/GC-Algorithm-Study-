import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var round = 0
    var temp = n
    
    for i in 1..<n {
        if temp/2 == 1 { 
            round = i
            break
        }
        temp /= 2
    }
    
    var now = n/2 
    var t = n/2
    
    for i in 0..<round {
        t /= 2
        
        if min(a, b) <= now && now < max(a, b) {
            answer = round - i
            break
        }

        if min(a, b) >= now {
            now += t
        }else {
            now -= t
        }
    }
    
    return answer
}
