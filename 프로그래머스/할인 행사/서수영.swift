import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wants = [String: Int]()
    var my = [String:Int]()
    var result = 0
    
    for i in 0..<want.count {
        wants[want[i]] = number[i]
    }
    
    var temp = Array(discount[0..<10])
    
    temp.forEach { 
        if my[$0] == nil { my[$0] = 0 }  
        my[$0]! += 1
    }
    
    
    for i in 9..<discount.count {
        my = [String: Int]()
        temp[i%10] = discount[i]

        temp.forEach { 
            if my[$0] == nil { my[$0] = 0 }  
            my[$0]! += 1
        }
        
        if my == wants {
            result += 1
        }
    }
    
    return result
}
