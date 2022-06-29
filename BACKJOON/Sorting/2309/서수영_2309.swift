import Foundation

let n = 9
var heightArr = [Int]()
var sum = 0
var index = true

for _ in 0..<n{
    heightArr.append(Int(readLine()!)!)
}

heightArr.sort()
sum = heightArr.reduce(0, +) - 100

for a in heightArr{
    for b in heightArr{
        if a+b == sum, a != b{
            heightArr.remove(at: heightArr.firstIndex(of: a)!)
            heightArr.remove(at: heightArr.firstIndex(of: b)!)
            index = false
            break
        }
    }
    if !index { break }
}
heightArr.forEach { print($0) }
