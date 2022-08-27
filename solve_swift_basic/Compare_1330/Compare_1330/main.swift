//
//  main.swift
//  Compare_1330
//
//  Created by 이조은 on 2022/08/27.
//

import Foundation

// 띄여쓰기로 정수 여러개 입력받기 (https://didu-story.tistory.com/177)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(input)
let numA = input[0]
let numB = input[1]

if numA > numB {
    print(">")
} else if numA < numB {
    print("<")
} else {
    print("==")
}

