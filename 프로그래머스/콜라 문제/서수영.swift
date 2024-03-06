import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var temp = 0
    var result = 0
    var n = n
    
    while true {
        temp = n % a
        result += n / a * b
        n = n / a * b + temp
        
        if n < a { break }
    }
    
    
    return result
}
