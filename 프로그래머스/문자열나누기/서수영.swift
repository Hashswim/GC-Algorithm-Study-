import Foundation
//String for 문 사용 가능
//dictionary 추가 구문
func solution(_ s:String) -> Int {
    let arrS = Array(s)
    
    var x = arrS[0]
    var result = 0
    var countX = 1
    
    for i in 1..<arrS.count {
        if countX == 0 { 
            x = arrS[i] 
            result += 1
        }
        
        countX = (x == arrS[i] ? countX + 1 : countX - 1)
    }
    
    
    return result + 1
}
