func solution(_ arr:[Int]) -> Int {
    var temp = Array(repeating: 1, count: arr.count+2)
    
    for i in 1..<arr.count+1 {
        temp[i] = lcm(temp[i-1], arr[i-1])
    }
    
    return temp[arr.count]
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var r = 0
    var a = a
    var b = b
    
    while (b != 0) {
        r = a % b
        a = b
        b = r
    }
    
    return a
}
