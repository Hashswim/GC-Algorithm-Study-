import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    var count = 1
        
    for (i, dungeon) in dungeons.enumerated() {
        if dungeon[0] <= k { 
            var newDungeons = dungeons
            newDungeons.remove(at: i)
            count = solution(k - dungeon[1], newDungeons) + 1
            result = max(count, result)
        }
    }
    
    return result
}
