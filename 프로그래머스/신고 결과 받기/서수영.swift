import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportedDict = [String:Int]()
    var reportWhoDict = [String : [String]]()
    
    var result = [Int]()
        
    var reportArr = report.map { $0.split(separator: " ").compactMap { String($0) } }
    
    for id in id_list {
        reportedDict[id] = 0
        reportWhoDict[id] = []
    }
    
    for report in reportArr {        
        if reportWhoDict[report[0]]!.contains(report[1]) { continue }
        reportedDict[report[1]]! += 1
        reportWhoDict[report[0]] = reportWhoDict[report[0]]! + [report[1]]
    }

    
    for id in id_list {
        var temp = 0      
        
        for reported in reportWhoDict[id]! {
            if reportedDict[reported]! >= k { temp += 1}
        }

        result.append(temp)
    }
    
    return result
}
