import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var count = 0
    var buff = [Int]()
    var index = 0
    
    for str in skill_trees{
        buff = []
        index = str.count - 1
        for s in Array(skill).reversed() {
            buff.append(check(s, str))
            
        }
        
        let reBuff = buff.sorted(by: >)
        
        if buff == reBuff{
            count += 1
        }

    }

    return count
}
func check(_ s: Character, _ skill: String) -> Int {
    let skil = Array(skill)
    var result = skill.count

    for i in 0..<skil.count{
        if s == skil[i]{
            result = i
            return result
        }
    }
    return result
}

