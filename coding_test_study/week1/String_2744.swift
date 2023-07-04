var arr = Array((readLine()!))

for i in 0...arr.count-1 {
   if arr[i] < "a" { // 대문자
    let s = String(arr[i])
    arr[i] = Character(s.lowercased())
   } else {
      let s = String(arr[i])
      arr[i] = Character(s.uppercased())
   }
}

for char in arr {
   print(char, terminator: "")
}