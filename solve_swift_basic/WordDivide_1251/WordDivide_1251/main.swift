//
//  main.swift
//  WordDivide_1251
//
//  Created by 이조은 on 2023/01/03.
//

import Foundation

let input = Array(readLine()!) // (띄어쓰기없이) 입력받아 배열로 return
let len = input.count

//var ans : [String] = []
var ans = "-"
for i in 0..<len-2 {
    for j in i+1..<len-1 {
        let first = Array(input[0...i].reversed())
        let second = Array(input[i+1...j].reversed())
        let third = Array(input[j+1...len-1].reversed())
        let comb = (first+second+third).map{String($0)}.joined()

        //ans.append(comb)
        // 맨 마지막에 sorted로 값을 뽑는 것보다 if 문을 사용하는 것이 메모리가 더 적다.
        if ans == "-" || ans > comb {
            ans = comb
        }
    }
}
//let result = ans.sorted(by: <)

//print(result[0])

print(ans)


