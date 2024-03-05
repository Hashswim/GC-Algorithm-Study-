import Foundation

func solution(_ food:[Int]) -> String {
    var str = ""
    
    for i in 1..<food.count {
        for j in 0..<(food[i]/2) {
            str += "\(i)"
        }
    }
    str = str + "0" + str.reversed()
    
    return str
}
