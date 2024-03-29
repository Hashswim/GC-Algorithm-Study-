func solution(_ s:String) -> String {
    let numberList = s.split(separator: " ").compactMap { Int($0) }
    
    return "\(numberList.min()!) \(numberList.max()!)"
}
