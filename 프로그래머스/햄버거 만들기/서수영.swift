import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var result = 0
    var stack = [Int]() 
    for i in ingredient {
        stack.append(i)
        let n = stack.count
        if n < 4 { continue }
        if Array(stack[n-4...n-1]) == [1, 2, 3, 1] {
            stack = Array(stack[0..<n-4])
            result += 1
        }
    }
    
    return result
}
