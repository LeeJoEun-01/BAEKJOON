//
//  main.swift
//  MaxMin_10818
//
//  Created by 이조은 on 2022/08/27.
//

import Foundation

// 최대최소 -10818

//let numN = Int(readLine()!)!
//let intArr = readLine()!.split(separator: " ").map { Int(String($0))! }
////print(intArr)
//var maxNum: Int = intArr[0]
//var minNum: Int = intArr[0]
//var target: Int = 0
//
//for i in 0...(numN-1) {
//    target = intArr[i]
//    if target <= maxNum {
//        if target < minNum {
//            minNum = target
//        }
//    } else {
//        maxNum = target
//    }
//}
//
//print("\(minNum) \(maxNum)")

//약수 -1037

let numN = Int(readLine()!)! // N의 진짜 약수의 개수
var divisorList = readLine()!.split(separator: " ").map { Int(String($0))! } //N의 진짜 약수 원소들

var maxNum: Int = divisorList[0]
var minNum: Int = divisorList[0]
var target: Int = 0
var ans: Int = 0

if divisorList.count == 1 {
    ans = divisorList[0]*divisorList[0]
} else {
    for i in 0...(numN-1) {
        target = divisorList[i]
        if target <= maxNum {
            if target < minNum {
                minNum = target
            }
        } else {
            maxNum = target
        }
    }
    ans = maxNum*minNum

}

print(ans)

//print("\(divisorList.min()! * divisorList.max()!)")

