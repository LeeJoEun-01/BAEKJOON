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
let input = readLine()!

var result = ""
result = input.replacingOccurrences(of: "XXXX", with: "AAAA")
result = result.replacingOccurrences(of: "XX", with: "BB")

if result.contains("X") {
    print(-1)
} else {
    print(result)
}






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



