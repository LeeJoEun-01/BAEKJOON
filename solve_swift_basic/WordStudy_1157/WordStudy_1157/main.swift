//
//  main.swift
//  WordStudy_1157
//
//  Created by 이조은 on 2022/10/26.
//

import Foundation

// 단어공부_1157

let wordArr = Array(readLine()!.lowercased())//입력;
print(wordArr)
// print(type(of:wordArr)) Array<Character>


// 중복요소를 제거하는 set 함수
let word: Set = Set(wordArr)
print(word)
// print(type(of:word))  Set<Character>

var wordDic: [Character:Int] = [:] //딕셔너리 선언
var countArr: Array<Int> = [] //배열 선언
var count: Int = 0

for char in word {
    count = 0
    count = wordArr.filter{($0) == char}.count
    wordDic[char] = count
    countArr.append(count)
}

print(wordDic)
//print(countArr)
let countArrSet: Set = Set(countArr)

let maxCount = countArr.max()
let answerDic = wordDic.filter({ (val1: Character, val2: Int) -> Bool in return val2 == maxCount } )

if answerDic.count >= 2 {
    print("?")
} else {
    for (key, _) in answerDic {
        print("\(key.uppercased())")
    }
}








