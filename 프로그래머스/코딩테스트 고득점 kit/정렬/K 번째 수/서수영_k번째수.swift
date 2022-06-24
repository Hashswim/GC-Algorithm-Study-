import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var re = [Int]()

    for i in 0..<commands.count{
        var a = arrCutting(array, commands[i][0], commands[i][1])
        a.sort()
        
        re.append(a[commands[i][2]-1])
    }
    
    return re
}

func arrCutting(_ arr:[Int], _ i: Int, _ j: Int) -> [Int] {
    var re = [Int]()
    for index in 0..<arr.count{
        if index >= i-1 && index <= j-1{
            re.append(arr[index])
        }
    }
    return re
}
