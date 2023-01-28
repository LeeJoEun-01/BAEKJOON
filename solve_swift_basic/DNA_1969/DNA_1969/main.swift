//
//  main.swift
//  DNA_1969
//
//  Created by 이조은 on 2023/01/26.
//

import Foundation

// MARK: DNA_1969
//let input = readLine()!
//let result = input.components(separatedBy: " ")
//let num = Int(result[0])!
//let num2 = Int(result[1])!
//
//var arr2D: [[Character]] = [[]]
//var answer: [String] = []
//var sum = 0
//
//for _ in 0..<num {
//    let arr = Array(readLine()!)
//    arr2D.append(arr)
//}
//
////print(arr2D)
//
//for i in 0..<num2 {
//    var target: [Character] = []
//    var distance = 0
//    for j in 1..<num+1 {
//        let str = arr2D[j][i]
//        target.append(str)
//    }
//
//    let numA = target.filter { ($0) == "A" }.count
//    let numC = target.filter { ($0) == "C" }.count
//    let numG = target.filter { ($0) == "G" }.count
//    let numT = target.filter { ($0) == "T" }.count
//
//    if max(numA, numC, numG, numT) == numA {
//        answer.append("A")
//        distance = numC + numG + numT
//    } else if max(numA, numC, numG, numT) == numC{
//        answer.append("C")
//        distance = numA + numG + numT
//    } else if max(numA, numC, numG, numT) == numG{
//        answer.append("G")
//        distance = numA + numC + numT
//    } else if max(numA, numC, numG, numT) == numT{
//        answer.append("T")
//        distance = numA + numC + numG
//    }
//    sum += distance
//}
//
//let answerStr = answer.joined(separator: "")
//print(answerStr)
//print(sum)


// MARK: 카드1_2161
let num = Int(readLine()!)!
var arr : Array<Int> = []
var count = 0

for i in 1...num {
    arr.append(i)
}

//print(arr)

for _ in 0..<num-1 {
    print(arr[0], terminator: " ")
    arr.removeFirst()
    let target = arr[0]
    arr.removeFirst()
    arr.append(target)
    
    //print("arr: \(arr)")
}

print(arr[0], terminator: " ")

