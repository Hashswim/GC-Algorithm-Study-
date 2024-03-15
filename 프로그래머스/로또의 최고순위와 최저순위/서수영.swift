import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let zero = lottos.filter { $0 == 0 }.count
    let wins = lottos.filter { win_nums.contains($0) }.count
    
    let result = [zero + wins < 2 ? 6 : 7 - wins - zero, wins < 2 ? 6 : 7 - wins]
    
    return result
}
