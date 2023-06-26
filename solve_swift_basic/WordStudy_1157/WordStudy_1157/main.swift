//
//  main.swift
//  WordStudy_1157
//
//  Created by 이조은 on 2022/10/26.
//

import Foundation

// 단어공부_1157

//let wordArr = Array(readLine()!.lowercased())//입력;
//print(wordArr)
//// print(type(of:wordArr)) Array<Character>
//
//
//// 중복요소를 제거하는 set 함수
//let word: Set = Set(wordArr)
//print(word)
//// print(type(of:word))  Set<Character>
//
//var wordDic: [Character:Int] = [:] //딕셔너리 선언
//var countArr: Array<Int> = [] //배열 선언
//var count: Int = 0
//
//for char in word {
//    count = 0
//    count = wordArr.filter{($0) == char}.count
//    wordDic[char] = count
//    countArr.append(count)
//}
//
//print(wordDic)
////print(countArr)
//let countArrSet: Set = Set(countArr)
//
//let maxCount = countArr.max()
//let answerDic = wordDic.filter({ (val1: Character, val2: Int) -> Bool in return val2 == maxCount } )
//
//if answerDic.count >= 2 {
//    print("?")
//} else {
//    for (key, _) in answerDic {
//        print("\(key.uppercased())")
//    }
//}

//var countArr: Array<Int> = [] //배열 선언


//var integers: [Int] = [1,2,3]
//print(integers)
//
//var intSet: Set<Int> = Set<Int>()
//intSet = [1,1,1,3,4,6,7,9]
//print(intSet)

//var integerSet: Set<Int> = Set<Int>()
//integerSet.insert(1)
//integerSet.insert(99)
//integerSet.insert(99)
//integerSet.insert(99)
//integerSet.insert(100)
//
//print(integerSet) // {100, 99, 1}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting1(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

func greeting2(friends: String, me: String = "yagom") {
    print("Hello \(friends)! I'm \(me)!")
}

var someFunction1: (String, String) -> Void = greeting1(to:from:)
var someFunction2: (String, String) -> Void = greeting2(friends:me:)


someFunction1("to","form")   //Hello to! I'm form
someFunction2("friends","me") //Hello friends! I'm me!

greeting2(friends: "hihi")  //Hello hihi! I'm yagom!
greeting2(friends: "hello", me:"world") // Hello hello! I'm world!


