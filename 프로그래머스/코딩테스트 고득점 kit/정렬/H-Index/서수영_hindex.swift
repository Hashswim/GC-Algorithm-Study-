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

/*
일단 정렬시    11 22
    
count-index  2  1

1. index를 argument로 넣는 함수 생성,
정렬했을시 해당 Index의 값과 count-index비교후(작은걸) HIndex값과 비교(큰걸)
조건 일치하면 담기

2. map함수, filter함수 써서 하기

3. enumarte로 for문 한번에 체크
*/
