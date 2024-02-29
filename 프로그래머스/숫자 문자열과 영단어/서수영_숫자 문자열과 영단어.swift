import Foundation

func solution(_ s:String) -> Int {
    var str = s
    let numberSheet = ["zero", "one", "two",
                       "three", "four", "five",
                       "six", "seven", "eight", "nine"]

    for index in 0..<10 {
        str = str.replacingOccurrences(of: numberSheet[index], with: String(index))
    }

    return Int(str)!
}
