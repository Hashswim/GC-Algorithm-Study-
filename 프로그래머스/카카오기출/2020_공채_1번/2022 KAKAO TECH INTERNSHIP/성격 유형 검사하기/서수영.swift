import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dict: [Character:Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
    var result = ""
    
    for index in 0..<survey.count{
        let nowStr = survey[index]
        let nowArr = Array(nowStr)
        
        if choices[index] < 4{
            dict[nowArr[0]]! += 4 - choices[index]
        }
        if choices[index] > 4{
            dict[nowArr[1]]! += choices[index] - 4
        }
    }
    
    if dict["R"]! >= dict["T"]! {
        result += "R"
    }else {
        result += "T"
    }
    
    if dict["C"]! >= dict["F"]! {
        result += "C"
    }else {
        result += "F"
    }
    
    if dict["J"]! >= dict["M"]! {
        result += "J"
    }else {
        result += "M"
    }
    
    if dict["A"]! >= dict["N"]! {
        result += "A"
    }else {
        result += "N"
    }
    return result
}
/*
A/B -> 비동의/동의
1 ~ 7 -> 비동의 ~ 동의

*/
