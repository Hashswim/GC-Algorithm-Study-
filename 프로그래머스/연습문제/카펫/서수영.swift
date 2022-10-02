import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result:[Int] = []
    var nArr = getCommonFactors(yellow)
    print(nArr)
     while true {
         let n = nArr.removeFirst()
        
         if brown == getBrownNumbers(n: n, yellow: yellow) {
             result = [(yellow/n) + 2, n+2]
             break
         }
     }
    
    return result
}

func getCommonFactors(_ yellow: Int) -> [Int] {
    var result: [Int] = []
    if yellow == 1 {
        return [1]
    }
    
    for k in 1...(yellow/2) {
        if yellow%k == 0 {
            result.append(k)
        }
    }
    
    return result
}

func getBrownNumbers(n: Int, yellow: Int) -> Int {
    return n*2 + (yellow/n)*2 + 4
}

