//
//  main.swift
//  week1
//
//  Created by 이조은 on 2023/06/27.
//

import Foundation

//final class FastIO {
//    var output: String = ""
//    private let buffer:[UInt8]
//    private var index: Int = 0
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
//    }
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//        return buffer[index]
//    }
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//        while now == 10 || now == 32 { now = read() }
//        if now == 45 { isPositive.toggle(); now = read() }
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//        return sum * (isPositive ? 1:-1)
//    }
//    @inline(__always) func readString() -> String {
//        var now = read()
//        while now == 10 || now == 32 { now = read() }
//        let beginIndex = index - 1
//        while now != 10,
//              now != 32,
//              now != 0 { now = read() }
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//    @inline(__always) func readLine() -> String {
//        var now = read()
//        while now == 10 || now == 32 { now = read() }
//        let beginIndex = index - 1
//        while now != 10,
//              now != 0 { now = read() }
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//    @inline(__always) func print(_ toPrint: String) {
//        output.write(toPrint)
//    }
//}
//
//let fastio = FastIO()
//defer {
//    print(fastio.output)
//}

// 사용법
//var a: Int = fastio.readInt()
//var b: String = fastio.readString()
//fastio.print("\(a) and \(b)")

// MARK: - 1000. A+B
//import Foundation
//
//let AB: Array = readLine()!.split(separator: " ").map { Int(String($0))! }
//print(AB[0]+AB[1])

// MARK: - 10871.
//var N: Int = fastio.readInt()
//var X: Int = fastio.readInt()
//
//var arr: Array = fastio.readLine().split(separator: " ").map { Int(String($0))!}
//
//let result: Array = arr.filter{$0 < N}
//
//for num in result {
//    print(num)
//}

// 스택 MARK: - 10871.

// MARK: 2161. 카드1
//struct Queue<T> {
//    private var elements: [T?]
//    private var headIndex = 0
//    private var count = 0
//
//    var isEmpty: Bool {
//        return count == 0
//    }
//
//    init(_ capacity: Int) {
//        elements = Array<T?>(repeating: nil, count: capacity)
//    }
//
//    mutating func push(_ element: T) {
//        let nextIndex = (headIndex + count) % elements.count
//        elements[nextIndex] = element
//        count += 1
//    }
//
//    mutating func pop() -> T {
//        let element = elements[headIndex]!
//        headIndex = (headIndex + 1) % elements.count
//        count -= 1
//        return element
//    }
//    func front() -> T {
//        return elements[headIndex]!
//    }
//}
//
//let num: Int = Int(readLine()!)!
//
//var myQueue = Queue<Int>(num)
//
//for i in 1...num {
//    myQueue.push(i)
//}
//
//while !myQueue.isEmpty {
//    print(myQueue.front(), terminator: " ")
//    let a = myQueue.pop()
//    if(myQueue.isEmpty){
//        break
//    }
//    let n = myQueue.front()
//    let b = myQueue.pop()
//    myQueue.push(n)
//}
//
//


// MARK: - 2743.
//let arr = Array(readLine()!)
//print(arr.count)

// MARK: - 2744.
//var arr = Array(readLine()!)
//
//for i in 0...arr.count-1 {
//    if arr[i] < "a" { // 대문자
//        arr[i] = arr[i].lowercased()
//    } else {
//        arr[i] = arr[i].uppercased()
//    }
//}
//
//for char in arr {
//    print(char, terminator: "")
//}

// MARK: - 2750.
let n = Int(readLine()!)!
var arr: Array<Int> = [Int](repeating: 0, count: n)
for i in 0...n-1 {
    arr[i] = Int(readLine()!)!
}

arr.sort()

for i in 0...n-1 {
    print(arr[i])
}
