import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var countArr = Array(repeating: 0, count: 3000001)
    
    countArr[x] = 1
    
    for i in x..<y+1 {
        if countArr[i] == 0 {continue}
        
        
        if countArr[i+n] == 0 { 
            countArr[i+n] = countArr[i] + 1 
        }else {
            countArr[i+n] = min(countArr[i] + 1, countArr[i+n])
        }
        
        if countArr[i*2] == 0 { 
            countArr[i*2] = countArr[i] + 1 
        }else {
            countArr[i*2] = min(countArr[i] + 1, countArr[i*2])
        }
        
        if countArr[i*3] == 0 { 
            countArr[i*3] = countArr[i] + 1 
        }else {
            countArr[i*3] = min(countArr[i] + 1, countArr[i*3])
        }
    }
    
    
    return countArr[y] - 1
}
