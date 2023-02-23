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
//let num = Int(readLine()!)!
//var arr : Array<Int> = []
//var count = 0
//
//for i in 1...num {
//    arr.append(i)
//}
//
////print(arr)
//
//for _ in 0..<num-1 {
//    print(arr[0], terminator: " ")
//    arr.removeFirst()
//    let target = arr[0]
//    arr.removeFirst()
//    arr.append(target)
//
//    //print("arr: \(arr)")
//}
//print(arr[0], terminator: " ")

// MARK: 동적 프로그래밍

// MARK: 설탕배달_2839
//let input = readLine()!
//var numN = Int(input)!
//
//var num5 = 0
//var num3 = 0
//
//// numN에서 3을 계속 뺄 때 5의 배수가 되면 stop
//// 5의 배수가 되지 않고 남으면 -1 출력
//while true {
//    if numN%5 == 0 {
//        num5 = numN/5
//        break
//    } else if numN<0{
//        num5 = 0
//        num3 = -1
//        break
//    } else {
//        numN = numN - 3
//        num3 += 1
//    }
//}
//
//print(num3+num5)


// MARK: 1로 만들기_1463
//var numX = Int(readLine()!)!
//var dp = [Int](repeating: 0, count: numX+1)
//
//for i in 2..<numX+1 {
//    dp[i] = dp[i-1] + 1
//    if i%3 == 0 {
//        dp[i] = min(dp[i], dp[i/3]+1)
//    }
//    if i%2 == 0 {
//        dp[i] = min(dp[i], dp[i/2]+1)
//    }
//}
//
//print(dp[numX])

// MARK: 1,2,3 더하기_9095
//let num = Int(readLine()!)!
//
//var dp = [Int](repeating: 0, count: 12)
//
//dp[1] = 1
//dp[2] = 2
//dp[3] = 4
//
//for j in 4..<12 {
//    dp[j] = dp[j-1] + dp[j-2] + dp[j-3]
//}
//
//for _ in 0..<num {
//    let n = Int(readLine()!)!
//    print(dp[n])
//}

// 맨 처음에 런타임 에러 나왔는데 출력 형식이 틀려서 그런거였다.

// MARK: 피보나치 함수_1003
//let numCase = Int(readLine()!)!
//var arr2D : [[Int]] = Array(repeating: Array(repeating: 0,count:2 ), count: 41)
//
//arr2D[0] = [1,0]
//arr2D[1] = [0,1]
//arr2D[2] = [1,1]
//
//for i in 3..<41 {
//    arr2D[i][0] = arr2D[i-1][0] + arr2D[i-2][0]
//    arr2D[i][1] = arr2D[i-1][1] + arr2D[i-2][1]
//}
//
//for _ in 0..<numCase {
//    let target = Int(readLine()!)!
//    print(arr2D[target][0], arr2D[target][1])
//}

// MARK: 부녀회장이 될테야_2775
//let numCase = Int(readLine()!)!
//
//for _ in 0..<numCase {
//    let floor = Int(readLine()!)!
//    let num = Int(readLine()!)!
//
//    var arr2D : [[Int]] = Array(repeating: Array(repeating: 0,count:15 ), count: floor+1)
//    arr2D[0] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
//
//    for i in 1..<floor+1 { //층수
//        for j in 1..<15 { //호수
//            arr2D[i][j] = arr2D[i][j-1] + arr2D[i-1][j]
//        }
//    }
//
//    print(arr2D[floor][num])
//}

// MARK: 자료구조

// MARK: 괄호_9012
//let num = Int(readLine()!)!
//
//for _ in 0..<num {
//    let arr = Array(readLine()!)
//    var arr2 : Array<String> = []
//
//    for i in 0..<arr.count {
//        if arr[i] == "(" {
//            arr2.append("(")
//        } else {
//            if arr2.count == 0 {
//                arr2.append(")")
//                break
//            }
//            arr2.removeLast()
//        }
//    }
//
//    let result = arr2.count == 0 ? "YES" : "NO"
//    print(result)
//}

// MARK: 스택_10828
//let num = Int(readLine()!)!
//
//var arr : Array<Int> = []
//for _ in 0..<num {
//    let str = readLine()!
//
//    if str.contains("push") {
//        var n = str.components(separatedBy: " ")
//        var n2 : Int = Int(n.popLast()!)!
//        arr.append(n2)
//    } else if str.contains("pop") {
//        if arr.count == 0 {
//            print(-1)
//        } else {
//            print(arr.popLast()!)
//        }
//    } else if str.contains("size") {
//        print(arr.count)
//    } else if str.contains("empty") {
//        if arr.count == 0 {
//            print(1)
//        } else {
//            print(0)
//        }
//    } else if str.contains("top") {
//        if arr.count == 0 {
//            print(-1)
//        } else {
//            print(arr.last!)
//        }
//    }
//}

// MARK: 제로_10773
//let num = Int(readLine()!)!
//var arr : Array<Int> = []
//
//for _ in 0..<num {
//    let target = Int(readLine()!)!
//    if target != 0 {
//        arr.append(target)
//    } else {
//        arr.removeLast()
//    }
//}
//
//let sum = arr.reduce(0) {$0+$1}
//print(sum)

// MARK: 수 찾기_1920
let num1 = Int(readLine()!)!
var arr1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let num2 = Int(readLine()!)!
var arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }

arr1.sort()

for i in 0..<num2 {
    let target = arr2[i]
    for j in 0..<num1 {
        if target == arr1[j] {
            print(1)
            break
        } else {
            if j == num1-1 || target < arr1[j] {
                print(0)
                break
            }
        }
    }
}
