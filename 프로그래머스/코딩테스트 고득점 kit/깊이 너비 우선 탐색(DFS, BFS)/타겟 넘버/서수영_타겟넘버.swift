import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var arr = [[0], [1]]
    var result = 0
    var count = 0
    
    for _ in 0..<numbers.count - 1{
        arr = returnNowIndex(arr)
    }
    
    for mapArr in arr {
        result = 0
        for i in 0..<mapArr.count {
            if mapArr[i] == 0 {
                result += numbers[i]
            }else {
                result -= numbers[i]
            }
        }
        if result == target {
            count += 1
        }
    }
    
    
    
    return count
}

func returnNowIndex(_ arr:[[Int]] ) -> [[Int]] {
    var new = [[Int]]()
    arr.map { 
        var n1 = $0
        var n2 = $0
        
        n1.append(0)
        n2.append(1)
        
        new.append(n1) 
        new.append(n2)
    }
    return new
}
/*
[[0], [1]]
0(+)또는 1(-)로 이루어진 array, numbers.count의 크기 -> 모든 경우에 대해 대응

*/
