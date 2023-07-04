let num: Array<Int> = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr: Array<Int> = readLine()!.split(separator: " ").map {Int(String($0))!}

for a in arr {
  if(a < num[1] ){
    print(a, terminator: " ")
  }
}