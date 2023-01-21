//
//  main.swift
//  WordDivide_1251
//
//  Created by 이조은 on 2023/01/03.
//

import Foundation


// WordDivide_1251
//let input = Array(readLine()!) // (띄어쓰기없이) 입력받아 배열로 return
//let len = input.count
//
////var ans : [String] = []
//var ans = "-"
//for i in 0..<len-2 {
//    for j in i+1..<len-1 {
//        let first = Array(input[0...i].reversed())
//        let second = Array(input[i+1...j].reversed())
//        let third = Array(input[j+1...len-1].reversed())
//        let comb = (first+second+third).map{String($0)}.joined()
//
//        //ans.append(comb)
//        // 맨 마지막에 sorted로 값을 뽑는 것보다 if 문을 사용하는 것이 메모리가 더 적다.
//        if ans == "-" || ans > comb {
//            ans = comb
//        }
//    }
//}
////let result = ans.sorted(by: <)
//
////print(result[0])
//
//print(ans)


// D-Day_1308

//let currentDay = readLine()!
//let dDay = readLine()!
//
//let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "yyyy-MM-dd"
//let startDate = dateFormatter.date(from:currentDay)
//let endDate = dateFormatter.date(from:dDay)
//
////print(startDate ?? 0)
////print(endDate ?? 0)
//
//let calendar = Calendar.current
//let dateGap: Int = calendar.dateComponents([.day], from: startDate!, to: endDate!).day ?? -1
//
//if (dateGap+1)/365 >= 1000 {
//    print("gg")
//} else {
//    print("D-\(dateGap)")
//}

//소수_1312
//let input = readLine()!.split(separator: " ").map{Double($0)!}
//
//let remain = input[0]/input[1]
//
//// var result = Int(remain*pow(10, input[2]))
//var num = 1.0
//for _ in 0..<Int(input[2]) {
//    num *= 10
//}
//
//print(Int(remain*num)%10)


//그룹 단어 체커_1316

//let n = Int(readLine()!)!
//var answer = 0
//
//for _ in 0..<n {
//    var checker: [Character] = []
//    let word = readLine()!
//
//    for char in word {
//        if !checker.contains(char) {
//            checker.append(char)
//        } else if checker.last != char {
//            checker.removeAll()
//            break
//        }
//    }
//
//    if checker.count != 0 {
//        answer += 1
//    }
//}
//print(answer)


// 나이트 투어_1331
// 1. 조건 처음과 마지막의 위치 차이의 절대값이 [1,2] , [2,1] 이어야 만족
// 2. 현 위치와 전 위치 차이의 절대값이 [1,2] , [2,1] 이어야 만족
// 3. 중복된 경로가 있는지 확인

//var arr : Array<String> = []
//var arrInt : Array<Int> = []
//let n = 36
//for _ in 0..<n {
//    let input = readLine()!
//    arr.append(input)
//    for index in input.utf16 {
//        arrInt.append(Int(index))
//    }
//
//}
//
//var flag = false
//
//// 조건 3
//if Set(arr).count != n {
//    flag = false
//    //print("1")
//} else {
//    //조건 1
//    if abs(arrInt[0]-arrInt[n*2-2]) == 1 && abs(arrInt[1]-arrInt[n*2-1]) == 2
//        || abs(arrInt[0]-arrInt[n*2-2]) == 2 && abs(arrInt[1]-arrInt[n*2-1]) == 1 {
//        // 조건 2
//        var i = 0
//        for _ in 0..<n-1 {
//            let currentX = arrInt[i]
//            let currentY = arrInt[i+1]
//            let nextX = arrInt[i+2]
//            let nextY = arrInt[i+3]
//            if abs(currentX-nextX) == 1 && abs(currentY-nextY) == 2
//                || abs(currentX-nextX) == 2 && abs(currentY-nextY) == 1 {
//                flag = true
//            } else {
//                flag = false
//                //print("2")
//                break
//            }
//            i += 2
//        }
//    } else {
//        flag = false
//        //print("3")
//    }
//}
//
//if flag == true {
//    print("Valid")
//} else {
//    print("Invalid")
//}


// 1343_폴리오미노
//let input = readLine()!
//
//var result = ""
//result = input.replacingOccurrences(of: "XXXX", with: "AAAA")
//result = result.replacingOccurrences(of: "XX", with: "BB")
//
//if result.contains("X") {
//    print(-1)
//} else {
//    print(result)
//}


// 1427_소트인사이드

//let input = Array(readLine()!)
//var result = (input.map{ Int(String($0))! }).sorted().reversed()
//print(result.map { String($0) }.joined(separator: ""))


// 1436_영화감독 숌
// 브루트포스(완전탐색) : 하나하나씩 찾으려고 할땐 횟수를 구할 땐 While True를 쓴다

//let target = Int(readLine()!)
//var num : Int = 666
//var count = 0
//
//while true {
//
//// 문자열로 바꿔서 contains 쓰니까 시간초과 뜸...;;
//
//    var n = num
//    while n >= 666 {
//        if n % 1000 == 666 {
//            count += 1
//            break
//        }
//        n /= 10
//    }
//
//    if count == target {
//        print(num)
//        break
//    }
//    num += 1
//}

// 1439. 뒤집기
//let input = Array(readLine()!)
//
//var zero = 0
//var one = 0
//
//for i in 0...input.count-2 {
//    let current = input[i]
//    let next = input[i+1]
//
//    if current != next {
//        if current == "0" {
//            zero += 1
//        } else {
//            one += 1
//        }
//    }
//}
//
//if zero > one {
//    print(zero)
//} else {
//    print(one)
//}

// 1402. 아무래도이문제는A번난이도인것같다
//let testCase = readLine()!
//
//for _ in 1...Int(testCase)! {
//    _ = readLine()!
//}
//
//for _ in 1...Int(testCase)! {
//    print("yes")
//}


// 1417.국회의원 선거
//let numN = Int(readLine()!)!
//var arr : Array<Int> = []
//
//for _ in 0..<numN {
//    arr.append(Int(readLine()!)!)
//}
//var target = arr[0]
//arr.removeFirst()
//arr = arr.sorted().reversed()
////print(arr)
//
//var count = 0
//if arr.count != 0 {
//    while target <= arr[0] {
//        target += 1
//        arr[0] -= 1
//        count += 1
//        arr = arr.sorted().reversed()
//        //print("target: \(target)")
//    }
//}
//
//print(count)

// 1475. 방 번호
//var input = readLine()!
//var numDic : [Int:Int] = [:]
//
//input = input.replacingOccurrences(of: "6", with: "9")
//let arr = input.map{Int(String($0))!}
//var maxKey = 0
//var maxValue = 0
//
////print(arr)
//
//for i in 0...9 {
//    numDic[i] = arr.filter({ ($0) == i }).count
//    if maxValue < numDic[i]! {
//        maxValue = numDic[i]!
//        if i == 9 {
//            maxValue = (numDic[i]!+1)/2
//        }
//        maxKey = i
//    }
//}
//
//print(maxKey)
//print(maxValue)


//print(numDic.max(by: {$0.key < $1.key})!.key)
//print(numDic.max(by: {$0.value < $1.value})!.value)

// 1476. 날짜계산

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//var numE = 1
//var numS = 1
//var numM = 1
//var count = 1
//
//while true {
//    if numE > 15 {
//        numE = 1
//    }
//    if numS > 28 {
//        numS = 1
//    }
//    if numM > 19 {
//        numM = 1
//    }
//    if numE == input[0] && numS == input[1] && numM == input[2] {
//            break
//    }
//
//    count += 1
//    numE += 1
//    numS += 1
//    numM += 1
//
//    //print("numE:\(numE), numS:\(numS), numM:\(numS)")
//}
//
//print(count)

// 1652. 누울 자리를 찾아서

// 1번 답안. 시간초과...
//let num = Int(readLine()!)!
//var arr2D : [[Character]] = Array(repeating: Array(repeating: ".",count:num ), count: num)
//
//for i in 0...num-1 {
//    let arr = Array(readLine()!)
//    for j in 0...num-1 {
//        arr2D[i][j] = arr[j]
//    }
//}
//
////print(arr2D)
////가로 자리
//var h = 0
//var count = 0
//for i in 0...num-1 {
//    count = 0
//    for j in 0...num-2 {
//        if arr2D[i][j] == "." && arr2D[i][j] == arr2D[i][j+1] {
//            if count == 0 {
//                h += 1
//                count += 1
//            }
//            //print("\(i) : \(h)  : \(count)")
//        } else {
//            count = 0
//        }
//    }
//}
////세로 자리
//var v = 0
//for i in 0...num-1 {
//    count = 0
//    for j in 0...num-2 {
//        if arr2D[j][i] == "." && arr2D[j][i] == arr2D[j+1][i] {
//            if count == 0 {
//                v += 1
//                count += 1
//            }
//            //print("\(i) : \(v) ")
//        } else {
//            count = 0
//        }
//    }
//}
//
//print("\(h) \(v)")

// 2번 답안
let num = Int(readLine()!)!
var arr2D : [[Character]] = Array(repeating: Array(repeating: ".",count:num ), count: num)

for i in 0...num-1 {
    let arr = Array(readLine()!)
    for j in 0...num-1 {
        arr2D[i][j] = arr[j]
    }
}

var column = 0
var row = 0
for i in 0..<num {
    let splitRow = arr2D[i].split(separator: "X").map { $0.count }
    let splitCol = arr2D.map({ $0[i] }).split(separator: "X").map { $0.count }
 
    for r in splitRow {
        if r >= 2 {
            row += 1
        }
    }
    for c in splitCol {
        if c >= 2 {
            column += 1
        }
    }
    //print("splitRow: \(splitRow)")
    //print("splitCol: \(splitCol)")
}
print(row, column)



// === 프로그래머스 ===
// Lv. 1 평균 구하기
//func solution(_ arr:[Int]) -> Double {
//    let num = arr.count
//    var sum = 0
//    var result = 0.0
//
//    for i in 0..<num {
//        sum += arr[i]
//    }
//
//    result = Double(sum)/Double(num)
//
//    return result
//}
//
//print(solution([1,2,3,4]))



