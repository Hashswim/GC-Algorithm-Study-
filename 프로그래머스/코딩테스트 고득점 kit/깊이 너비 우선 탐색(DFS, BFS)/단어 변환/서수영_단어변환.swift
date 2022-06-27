import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    if !words.contains(target) { return 0 }
    return BFS(begin, target, words) - 1
}
func BFS(_ begin:String, _ target:String, _ words:[String]) -> Int{
    var visitedQueue = [String]()
    var needVisitQueue = [begin]
    var buff = [String]()
    var count = 0
    
    while !needVisitQueue.isEmpty{
        buff = [""]
        while !needVisitQueue.isEmpty {

            let node = needVisitQueue.removeFirst()
            if visitedQueue.contains(node) {continue}

            visitedQueue.append(node)
            buff += words.filter { checkIsOneDifference(node, $0) }
        }
        guard !buff.isEmpty || count > words.count else {break}
        
        needVisitQueue += buff
        count += 1
        if visitedQueue.contains(target) {return count}
        //print(visitedQueue, count)
    }
    
    return 0
}
func checkIsOneDifference(_ check:String, _ target:String) -> Bool {
    var wrongCnt = 0
    let checkChrArr = Array(check)
    let targetChrArr = Array(target)
    
    for i in 0..<checkChrArr.count {
        if checkChrArr[i] != targetChrArr[i]{
            wrongCnt += 1
        }
        
        if wrongCnt == 2{return false}
    }
    if wrongCnt == 0 {
        return false
    }
    //print(check, target)
    return true
}

/*
BFS로 바꿔 가다가 target과 같으면 return count
끝까지 다 돌았으면 count=0으로 변환

bfs함수
visitQueue 설정, 
끊어 줘야됨

같은 단어가 checkIssame 에 들어가면 체크X

하나만 다른지 체크하는 함수 설정
모든 단어 길이는 같음, 중복 없음
*/
