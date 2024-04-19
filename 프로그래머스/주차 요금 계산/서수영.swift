import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var timeTable = [Int : Int]()
    var result = [Int]()
    
    for record in records {
        var tempArr = record.split(separator: " ")
        let timeArr = tempArr[0].split(separator: ":").map { Int($0)! }
        
        if tempArr[2] == "IN" {            
            timeTable[Int(tempArr[1])!] = (timeTable[Int(tempArr[1])!] ?? 0) - (timeArr[0] * 60 + timeArr[1])
        }else {
            timeTable[Int(tempArr[1])!]! += timeArr[0] * 60 + timeArr[1]
        }
    }
    
    let carNumbers = timeTable.keys.sorted(by: <)
    
    for carNumber in carNumbers {
        let minute = timeTable[carNumber]! <= 0 ? timeTable[carNumber]! + (23 * 60) + 59 : timeTable[carNumber]!
        
        if minute <= fees[0] {
            result.append(fees[1])
        }else {
            result.append(fees[1] + Int(ceil( Double(minute - fees[0]) / Double(fees[2]))) * fees[3])
        }
    }

    return result
}
