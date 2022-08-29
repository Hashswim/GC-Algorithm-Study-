import Foundation
var dict = [Int:[Int]]()

let NMStart = readLine()!.split(separator: " ").map{ Int($0)! }
//let NMStart = [2, 3, 4]

for key in 1...NMStart[0] {
    dict[key] = []
}

for _ in 0..<NMStart[1] {
    let nArr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    dict[nArr[0]]?.append(nArr[1])
    dict[nArr[1]]?.append(nArr[0])
}
print(dict)

func DFS(_ dict: [Int:[Int]], _ start: Int) -> [Int]{
    var visitedQueue = [start]
    var needVisitQueue = dict[start]!.sorted(by: >)
    
    while !needVisitQueue.isEmpty {
        let now = needVisitQueue.removeLast()
        if visitedQueue.contains(now) {continue}
        
        visitedQueue.append(now)

        needVisitQueue.append(contentsOf: dict[now]!.sorted(by: >))
    }
    
    return visitedQueue
}

func BFS(_ dict: [Int:[Int]], _ start: Int) -> [Int]{
    var visitedQueue = [start]
    var needVisitQueue = dict[start]!.sorted(by: < )
    
    while !needVisitQueue.isEmpty {
        let now = needVisitQueue.removeFirst()
        if visitedQueue.contains(now) {continue}
        
        visitedQueue.append(now)
        
        needVisitQueue.append(contentsOf: dict[now]!.sorted(by: < ))
    }
    
    return visitedQueue
}
var result = ""

DFS(dict, NMStart[2]).forEach{ result += "\($0) " }
print(result.trimmingCharacters(in: [" "]))

result = ""

BFS(dict, NMStart[2]).forEach{ result += "\($0) " }
print(result.trimmingCharacters(in: [" "]))
