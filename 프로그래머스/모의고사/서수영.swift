import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let a = [1, 2, 3, 4, 5]
    let b = [2, 1, 2, 3, 2, 4, 2, 5]
    let c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var count = [0, 0, 0]
    var result = [Int]()

    for i in 0..<answers.count {
        if answers[i] == a[i%a.count] { count[0] += 1 }
        if answers[i] == b[i%b.count] { count[1] += 1 }
        if answers[i] == c[i%c.count] { count[2] += 1 }
    }

    let max = count.max()

    for i in 0..<3 {
        if count[i] == max { result.append(i+1) }
    }

    return result
}
