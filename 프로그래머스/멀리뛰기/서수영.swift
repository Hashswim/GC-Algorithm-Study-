func solution(_ n:Int) -> Int {
    var arr = Array(repeating: 1, count: n+2)
    
    arr[1] = 1
    arr[2] = 2
    
    if n < 3 { return arr[n] }
    
    for i in 0..<n {
        arr[i+2] = (arr[i+1] + arr[i])%1234567
    }
    
    return arr[n]
}
