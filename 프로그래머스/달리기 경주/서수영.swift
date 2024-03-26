import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playersDict1 = [String : Int]()
    var playersDict2 = [Int : String]()
    
    var result = [String](repeating: "", count: players.count)
    
    for i in 0..<players.count {
        playersDict1[players[i]] = i
        playersDict2[i] = players[i]
    }
    
    
    for calling in callings {
        let index = playersDict1[calling]!
        let temp = playersDict2[index-1]!
        
        playersDict1[calling] = index-1
        playersDict1[temp] = index
        
        playersDict2[index-1] = calling
        playersDict2[index] = temp
    }
    
    for key in playersDict2.keys {
        result[key] = playersDict2[key]!
    }
    
    return result
}
