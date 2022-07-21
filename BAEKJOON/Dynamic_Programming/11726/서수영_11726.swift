//
//  11726.swift
//  BOJ
//
//  Created by 서수영 on 2022/06/12.
//

import Foundation

/*
 logic
 
 숫자 n 을 1과 2의 합의로 표현하는 방법의 수 (3 = 1+1+1, = 2+1, = 1+2 -> 3개)
 -> num(n) = num(n-1)+ num(n-2)
 
 */
/*
let number = Int(readLine()!)!
print(num(number))
func num(_ n:Int) -> Int{
    switch n{
    case 1:
        return 1
    case 2:
        return 2
    default:
        return (num(n-1) + num(n-2))%10007
    }
}
*/
let number = Int(readLine()!)!
var numArr = Array(repeating: 0, count: number+2)

numArr[1] = 1
numArr[2] = 2

if number < 3{
    print(numArr[number])
}else{
    for i in 3...number+1{
        numArr[i] = (numArr[i-1] + numArr[i-2])%10007
    }
    print(numArr[number])
}

