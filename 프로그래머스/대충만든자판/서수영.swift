import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict = [Character : Int]()
    var result = [Int]()
    
    for map in keymap {
        var i = 0
        
        for chr in map {
            if dict[chr] == nil {
                dict[chr] = i + 1
            }else {
                dict[chr] = min(dict[chr]!, i + 1)
                
            }
            
            i += 1
        }
    }
    
    for target in targets {
        var count = 0
        
        for chr in target {
            if let c = dict[chr] {
                count += c
            }else {
                count = -1
                break
            }
        }
        
        result.append(count)
    }
    
    return result
}
