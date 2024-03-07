import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var result = [Int]()
    
    for i in 0..<score.count {
        arr.append(score[i])
        arr.sort(by: >)
        result.append(arr[min(k-1, i)])
    }
    
    return result
}

// func solution(_ k:Int, _ score:[Int]) -> [Int] {
//     var arr = [Int]()
//     var result = [Int]()
    
//     for i in 0..<score.count {
//         if arr.count < k {
//             arr.append(score[i])
//             result.append(arr.min()!)
//         } else {
//             let smallest = arr.min()!
//             if smallest >= score[i] {
//                 result.append(smallest)
//             } else {
//                 arr.remove(at: arr.firstIndex(of: smallest)!)
//                 arr.append(score[i])
//                 result.append(arr.min()!)
//             }
//         }
//     }
    
//     return result
// }
