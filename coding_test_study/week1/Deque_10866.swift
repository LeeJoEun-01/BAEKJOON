let num: Int = Int(readLine()!)!
var arr: Array<Int> = []
var headIndex = 0;

for _ in 1...num {
  let input: Array<String> = readLine()!.split(separator: " ").map { String($0) }

  if (input[0] == "push_front") {
    let n: Int = Int(input[1])!
    arr.insert(n, at: headIndex)
  } else if (input[0] == "push_back") {
    let n: Int = Int(input[1])!
    arr.append(n)
  } else if (input[0] == "pop_front") {
    if (arr.count == headIndex) {
      print(-1)
    } else {
      print(arr[headIndex])
      headIndex += 1
    }
  } else if (input[0] == "pop_back") {
    if (arr.count == headIndex) {
      print(-1)
    } else {
      let last = arr.popLast() ?? -1
      print(last)
    }
  } else if (input[0] == "size") {
    print((arr.count)-headIndex)
  } else if (input[0] == "empty") {
    if (arr.count == headIndex) {
      print(1)
    } else {
      print(0)
    }
  } else if (input[0] == "front") {
    if (arr.count == headIndex) {
      print(-1)
    } else {
      print(arr[headIndex])
    }
  } else if (input[0] == "back") {
    if (arr.count == headIndex) {
      print(-1)
    } else {
      print(arr[arr.count-1])
    }
  }
}