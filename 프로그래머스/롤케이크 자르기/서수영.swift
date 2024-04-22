import Foundation

func solution(_ topping:[Int]) -> Int {
    var toppingDict = topping.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    var setTemp = Set<Int>()
    var result = 0
        
    for t in topping {
        toppingDict[t]! -= 1
        if toppingDict[t] == 0 { toppingDict.removeValue(forKey: t) }
        
        setTemp.insert(t)
        
        if setTemp.count == toppingDict.count { result += 1 }
    }

    return result
}
