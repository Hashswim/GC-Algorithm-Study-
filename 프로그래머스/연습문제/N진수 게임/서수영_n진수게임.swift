func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var arr = [[Int]]()
    var sum = String()
    
    for i in 0..<m*t{
        arr.append(convert(i, n))
    }
    
    let arr1 = arr.flatMap{ $0 }

    for i in stride(from: p-1, to: arr1.count, by: m){

        if arr1[i] < 10{
            sum += String(arr1[i])
        }else{
            switch arr1[i] {
                case 10: 
                    sum += "A"
                case 11: 
                    sum += "B"
                case 12: 
                    sum += "C"
                case 13: 
                    sum += "D"
                case 14: 
                    sum += "E"
                case 15: 
                    sum += "F"
                default:
                    break
            }
        }
        if sum.count == t{
            break
        }
        
    }
    
    return sum
}

func convert(_ count: Int, _ n: Int) -> [Int]{
    var result = [Int]()
    var count = count
    while count >= n {
        result.append(count%n)
        count = count / n
    }
    result.append(count)
    result = result.reversed()

    return result
}
