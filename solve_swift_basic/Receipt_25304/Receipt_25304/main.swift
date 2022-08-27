//
//  main.swift
//  Receipt_25304
//
//  Created by 이조은 on 2022/08/27.
//

import Foundation

let totalX = Int(readLine()!)
let sortN = Int(readLine()!)!
var totalResult: Int = 0

for _ in 0...(sortN-1) {
    let oneOfSort = readLine()!.split(separator: " ").map { Int(String($0))! }
    totalResult = totalResult + oneOfSort[0]*oneOfSort[1]
}

if totalX == totalResult {
    print("Yes")
} else {
    print("No")
}
