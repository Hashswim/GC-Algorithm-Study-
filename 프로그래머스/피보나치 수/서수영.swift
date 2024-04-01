func solution(_ n:Int) -> Int {
    var arr = Array(repeating: 0, count: n+2)
    arr[0] = 0
    arr[1] = 1
    
    for i in 2..<n+1 {
        arr[i] = (arr[i-1] + arr[i-2])%1234567
    }
    
    return arr[n]
}
