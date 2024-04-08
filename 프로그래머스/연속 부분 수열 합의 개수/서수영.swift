import Foundation

func solution(_ elements:[Int]) -> Int {
    let elementsAdd = elements + elements
    var arr = Array(repeating: 0, count: elements.count+1)
    var result = [Int]()
    
    for i in 1..<elements.count+1 {
        for j in 0..<elements.count {
            arr[j] = arr[j] + elementsAdd[j+i]
            result.append(arr[j])
        }
    }
    return Set(result).count
}
