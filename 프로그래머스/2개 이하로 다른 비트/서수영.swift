import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    var result = [Int64]()
    
    for number in numbers {
        if number % 2 == 0 { 
            result.append(number + 1) 
        } else {
            var arr = Array("0" + String(number, radix: 2))

            for i in stride(from: arr.count - 1, to: -1, by: -1) {                
                if arr[i] == "0" {
                    arr[i] = "1"
                    arr[i+1] = "0"
                    break
                }
            }
            
            result.append(Int64(String(arr), radix: 2)!)    
        }
    }
    
    
    return result
}

