import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var all = [Int](repeating: 1, count: n+2)
    for l in lost{
        all[l] -= 1
    }
    for r in reserve{
        all[r] += 1
    }
    
    for i in 1...n{

        if all[i] == 0{
            if all[i-1] == 2{
                all[i-1] = 1
                all[i] = 1
            }else if all[i+1] == 2{
                all[i+1] = 1
                all[i] = 1
            }
        }
    }        
    
    return all.filter { $0>=1 }.count - 2
}
