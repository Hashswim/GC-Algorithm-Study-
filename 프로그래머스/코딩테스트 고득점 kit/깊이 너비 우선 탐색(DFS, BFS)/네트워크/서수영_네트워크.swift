import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visited = [Int]()
    var count = 0
    
    for i in 0..<computers.count {
        if !visited.contains(i){
            BFS(computers, i, &visited, &count)
        }
    }
    
    return count
}

func BFS(_ computers:[[Int]] , _ start: Int, _ visited: inout [Int], _ count: inout Int) -> () {
    var needVisit = [start]
    
    count += 1
    
    while !needVisit.isEmpty {
        let node = needVisit.removeFirst()
        if visited.contains(node) {continue}
        
        visited.append(node)
        for (index, value) in computers[node].enumerated() {
            if value == 1 {
                needVisit.append(index)
            }
        }
        
        
    }

}
