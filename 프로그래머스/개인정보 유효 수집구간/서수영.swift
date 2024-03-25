import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let t = terms.compactMap { $0.split(separator: " ") }
    var table = [String : Int]()
    
    t.forEach { e in
        let k = String(e[0])
        table[k] = Int(e[1])! * 28
    }
    
    var dateAndType = privacies.compactMap { $0.components(separatedBy: " ") }
    var date = dateAndType.compactMap { $0[0].split(separator: ".") }
    
    let dateCount = date.map { (Int($0[0])!%100)*28*12 +  Int($0[1])!*28 + Int($0[2])!}

    let todayDate = today.split(separator: ".")
    let todayDateCount = (Int(todayDate[0])!%100)*12*28 + Int(todayDate[1])!*28 + Int(todayDate[2])!
    
    var result = [Int]()
    
    for i in 0..<dateCount.count {
        if todayDateCount >= table[dateAndType[i][1]]! + dateCount[i] {
            result.append(i+1)
        }
    }
    
    return result.sorted()
}
