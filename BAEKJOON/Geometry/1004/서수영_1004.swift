//
//  File.swift
//  BOJ
//
//  Created by 서수영 on 2022/06/07.
//

import Foundation

let T = Int(readLine()!)!
for _ in 0..<T{
    
    var count = 0
    let input = readLine()!.split(separator:" ").map{ Int($0)! }
    let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]
    let n = Int(readLine()!)!
    
    //print("\np1: (\(x1),\(y1)), p2: (\(x2),\(y2))")
    
    //cx, cy, r
    //var circle =  [Array<Int>]()
    for _ in 0..<n {
        if isCountingCheck((x1, y1), (x2, y2), readLine()!.split(separator: " ").map { Int(String($0))! }){
            count += 1
        }
    }
    print(count)
    
}

func isCountingCheck(_ point1:(Int, Int), _ point2:(Int, Int), _ circle: Array<Int>) -> Bool{
    var p1Check = Bool()
    var p2Check = Bool()

    //point1 check
    p1Check = isInCheck(point1.0, point1.1, circle[0], circle[1], circle[2]) ? true : false
    //point2 check
    p2Check = isInCheck(point2.0, point2.1, circle[0], circle[1], circle[2]) ? true : false

    //point3 check
    return (p1Check != p2Check) ? true : false
}

func isInCheck(_ x:Int, _ y:Int, _ cx:Int, _ cy:Int, _ r:Int) -> Bool {
    let dSqrt = pow(Double(x-cx), 2) + pow(Double(y-cy), 2)
    return (dSqrt < pow(Double(r), 2)) ? true : false
}


/*
 logic
     시작, 도착 두 점이 각 원에 어떻게 포함되었는지 케이스 분류
     1. 한점만 포함 - 카운팅
     2. 두점다 포함 - 카운팅X
     3. 두점다 미포함 - 카운팅X
 */
