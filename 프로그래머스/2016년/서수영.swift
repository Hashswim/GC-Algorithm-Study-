func solution(_ a:Int, _ b:Int) -> String {
    let day = ["THU","FRI","SAT","SUN","MON","TUE", "WED"]
    let arr = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    return day[(arr[0..<a].reduce(0, +) + b)%7]
}
