func solution(_ s:String) -> String {
    var result = s.components(separatedBy: " ").map { Array($0.lowercased()) }
    var answer = ""
    
    for arr in result {
        var arr = arr
        if arr.count != 0 { 
            arr[0] = Character(arr[0].uppercased())
            answer += String(arr) 
        }
        answer += " "
    }
    
    return String(answer.prefix(answer.count - 1))
}
