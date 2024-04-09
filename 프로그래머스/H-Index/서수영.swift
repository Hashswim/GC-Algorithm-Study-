import Foundation

func solution(_ citations:[Int]) -> Int {
    let sortedCitations = citations.sorted()
    var HIndex = 0
    let arrCount = sortedCitations.count
    
    for (index, value) in sortedCitations.enumerated(){
        if (arrCount - index) >= value && HIndex <= value{
            HIndex = value
        }else if (arrCount - index) < value && HIndex <= (arrCount - index) {
            HIndex = (arrCount - index)
        }
    }
    
    return HIndex
}
