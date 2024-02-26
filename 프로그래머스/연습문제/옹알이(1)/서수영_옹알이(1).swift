import Foundation

func solution(_ babbling:[String]) -> Int {
    var result = 0
    var replacedStr = ""
    
    for str in babbling {
        replacedStr = str.replacingOccurrences(of: "aya", with: "_")
        replacedStr = replacedStr.replacingOccurrences(of: "ye", with: "_")
        replacedStr = replacedStr.replacingOccurrences(of: "woo", with: "_")
        replacedStr = replacedStr.replacingOccurrences(of: "ma", with: "_")

        replacedStr = replacedStr.replacingOccurrences(of: "_", with: "")
        if replacedStr.count == 0 {result += 1}
    }
    
    return result
}
