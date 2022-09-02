import Foundation

let n = Int(readLine()!)!
var arr = [Int](repeating: 0, count: n+1)
arr[0] = 1
arr[1] = 3

if n > 2{
    for i in 2..<n {
        arr[i] = (arr[i-1] + arr[i-2]*2) % 10007
    }
}
print(arr[n-1])
