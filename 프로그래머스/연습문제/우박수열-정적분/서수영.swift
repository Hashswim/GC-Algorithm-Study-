import Foundation

func solution(_ k:Int, _ ranges:[[Int]]) -> [Double] {
    var arr = [Int]()
    var n = k

    var result = [Double]()

    arr.append(n)
    while true {
        n = collatz(n)

        arr.append(n)
        if n == 1 {
            break
        }
    }

    for range in ranges {
        let a = range[0]
        let b = arr.count + range[1] - 1

        var sum = [Double]()

        if a == b {
            result.append(0.0)
            continue
        } else if a > b {
            result.append(-1)
            continue
        }

        for i in a..<b {
            let double = Double(arr[i]+arr[i+1])
            sum.append(double/2.0)
        }
        result.append(sum.reduce(0, +))
    }

    return result
}

func collatz(_ n: Int) -> Int {
    return n%2 == 0 ? n/2 : n*3+1
}
