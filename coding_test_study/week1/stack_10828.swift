let num: Int = Int(readLine()!)!
var arr: Array<Int> = []

for _ in 1...num {
  let input: Array<String> = readLine()!.split(separator: " ").map { String($0) }
  if (input[0] == "push") {
    let n: Int = Int(input[1])!
    arr.append(n)
  } else if (input[0] == "pop") {
    if (arr.count == 0){
      print(-1)
    } else {
      let last: Int = arr.popLast() ?? 0
      print(last)
    }
  } else if (input[0] == "size") {
    print(arr.count)
  } else if (input[0] == "empty") {
    if (arr.count == 0){
      print(1)
    } else {
      print(0)
    }
  } else if (input[0] == "top") {
    if (arr.count == 0){
      print(-1)
    } else {
      print(arr[(arr.count)-1])
    }
  }
}