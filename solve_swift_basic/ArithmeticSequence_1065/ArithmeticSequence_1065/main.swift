//
//  main.swift
//  ArithmeticSequence_1065
//
//  Created by 이조은 on 2022/09/04.
//

import Foundation

let numN = Int(readLine()!)!

func arithmeticSequence(num: Int) -> Int {

    var count: Int = 0;
    for i in 0...numN {
        if i>0 && i < 100 { //한자릿수 //두자릿수
            count = count + 1
        } else if i > 100 { //세자릿수 123
            let x: Int = i/100 //1
            let y: Int = (i-x*100)/10 //2
            let z: Int = (i-x*100-y*10) //3
            if x-y == y-z {
                count = count + 1
            }
        }
    }

    return count
}

print(arithmeticSequence(num: numN))

