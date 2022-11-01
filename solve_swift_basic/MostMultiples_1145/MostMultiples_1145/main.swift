//
//  main.swift
//  MostMultiples_1145
//
//  Created by 이조은 on 2022/10/17.
//

import Foundation

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

// 시간초과 => 변수 선언 위치 유의해서 코드짜자!
var count: Int = 0

var i: Int = 1
while count < 3 {
    count = 0
    for j in nums {
        //print(i%j)
        if i%j == 0 {
            count = count + 1
            //print("count: ",count)
        }
    }
    i = i + 1
}
print(i-1)




