import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let arr = getNum(n: n, k: k).split(separator: "0")
    let result = arr.filter { isPrime(Int($0)!) }.count
    return result
}

func getNum(n: Int, k: Int) -> String {
    var n = n
    var result = ""
    
    while n > 0 {
        result += String(n%k)
        n /= k
    }
    return String(result.reversed())
}

func isPrime(_ n: Int) -> Bool {
    if n == 1 { return false }
    if n <= 3 { return true }
        
    for i in 2...Int(sqrt(Double(n))) {
        if n%i == 0 { return false }
    }
    return true
}
