//
//  main.swift
//  MaxMin_10818
//
//  Created by 이조은 on 2022/08/27.
//

import Foundation

let numN = Int(readLine()!)!
let intArr = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(intArr)
var maxNum: Int = intArr[0]
var minNum: Int = intArr[0]
var target: Int = 0

for i in 0...(numN-1) {
    target = intArr[i]
    if target <= maxNum {
        if target < minNum {
            minNum = target
        }
    } else {
        maxNum = target
    }
}

print("\(minNum) \(maxNum)")

