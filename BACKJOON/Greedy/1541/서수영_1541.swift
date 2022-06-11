//
//  boj1541.swift
//  BOJ
//
//  Created by 서수영 on 2022/06/11.
//

import Foundation

var subStrList = Array<String>()
var value = 0
var cnt = 0
var str: String

str = readLine()!

str = str.replacingOccurrences(of: "-", with: " ")
subStrList = str.split(separator: " ").map({ String($0) })
//print(subStrList)
for i in subStrList{
    
    var subSum = 0
    let dump = i.split(separator: "+").map{Int(String($0))!}
    //print(dump)
    subSum = dump.reduce(0) { $0 + $1 }
    
    if cnt == 0{
        value = subSum
    }else{
        value -= subSum
    }
    cnt += 1
    //print(cnt)
}
print(value)
