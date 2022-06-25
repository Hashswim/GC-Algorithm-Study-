import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var closet = [String:Int]()
    var totalCases = 1
    
    for dress in clothes{
        if let _ = closet[dress[1]]{
            closet[dress[1]]! += 1
        }else{
            closet[dress[1]] = 2
        }
    }
    print(closet)
    for node in closet.keys{
        totalCases *= closet[node]!
    }
    
    return totalCases - 1
}
