import Foundation

func solution(_ numbers:[Int]) -> String {
    var arr = numbers.sorted { Int("\($0)\($1)")! > Int("\($1)\($0)")! }.map { String($0) }
    
    if arr[0] == "0"{return "0"}
    return arr.reduce("", +)
}
