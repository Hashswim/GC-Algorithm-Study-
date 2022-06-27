import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr3 = [[Int]]()
    var buff = [Int]()
    var sum = 0

    for a in 0..<arr1.count{
        buff = []
        for b in 0..<arr2[0].count{
            sum = 0
            for c in 0..<arr2.count{
                sum += arr1[a][c] * arr2[c][b]
            }
            buff.append(sum)
        }
        arr3.append(buff)
    }

    return arr3
}
/*
행렬 곱: arr3[a][b] == arr1[a][*] * arr2[*][b]
4,2 * 2*5 -> 4,5
*/
