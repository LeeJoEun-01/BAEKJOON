# Swift로 백준 단계별 문제풀기 
  
>## 딕셔너리 (Dictionaty)
```swift
//딕셔너리 선언
var wordDic: [Character:Int] = [:]

//배열 선언
var countArr: Array<Int> = []
```
- String 타입의 데이터(문자열)에서 특정 문자를 char타입으로 변환할 때 사용하는 함수이다. i 자리에는 int형 변수를 넣어서 원하는 위치의 문자를 가져올 수 있다.
  
>## Set()
- 중복요소를 제거하는 set 함수
```swift
let word: Set = Set(wordArr)
print(type(of:word))  // Set<Character>
```
  
>## filter()
- 데이터를 추출하고자 할 때 사용
```swift
// filter함수로 딕셔너리 추출
let maxCount = countArr.max()
let answerDic = wordDic.filter({ (val1: Character, val2: Int) -> Bool in return val2 == maxCount } )
print(answerDic) // 조건에 맞는 딕셔너리만 출력  ["z": 1]
```
  
>## 유용하고 간단한 함수들
- 최대,최소: `max(), min()`   =>  max(numA, numC, numG, numT) 여러 요소도 가능 !!
- 배열 뒤집기: `reverse()`
- 오름차순으로 정렬: `sort()` && 새로운 배열을 오름차순으로 정렬하여 return: `sorted()`
- 소문자, 대문자: `lowercased(), uppercased()`
- 절대값: `abs()`
  
- 처음과 끝 인덱스: `startIndex, endIndex`
- 처음과 끝 인덱스의 값; `first, last`
```swift
var arr = [60,70,80,90,100]

arr.startIndex // 0
arr.endIndex // 5

arr.first // == arr[arr.startIndex] == 60
arr.last  // == arr[(arr.endIndex)-1] == 100
```
  
- 특정 문자열 제거/변경 하기: `replacingOccurrences(of: "변경할 대상", with: "변경될 문자")`
```swift
let str = "XXXX..XX....XXXXXX"

result = input.replacingOccurrences(of: "XXXX", with: "AAAA")
result = result.replacingOccurrences(of: "XX", with: "BB")

print(result) // AAAA..BB....AAAABB
```
  
>## 배열 길이 (count?? capacity??) 
```swift
var arr = [1,2,3]

arr.count // 3
arr.capacity // 3

arr.removeLast()  // 마지막 요소 제거
arr.count // 2
arr.capacity // 3 -> 요소 제고 후에도 capacity는 동일
```
`capacity`는 새로운 스토리지를 할당 없이, Array에 얼만큼의 element를 담을 수 있는지를 나타내는 것이다.  
따라서, 모든 Array는 콘텐츠를 저장하기 위해 특정 양의 메모리를 예약하기 때문에, 특정 element를 제거한다고해도 이 공간의 크기는 변하지 않는다.
<!-- https://sujinnaljin.medium.com/swift-array-%EC%9D%98-capacity-9c3a99d2c31f -->

>## 배열 다루기
- 추가
  - `arr.append(추가할 요소)`
- 삽입
  - `arr.insert(추가할 요소, at: 인덱스 위치)`
- 삭제
  - `arr.popLast()`  => arr 배열의 마지막 요소를 반환하고 원본 배열에서 삭제
  - `arr.remove(at: 인덱스 위치)`
  - `arr.removeLast()`
  - `arr.removeAll()`
  - `arr.removeFirst()`

>## contains()
- contains: 문자열이나 배열에 특정 문자가 속해있는지 문자열 포함여부를 Boolean값으로 리턴해주는 함수
- 단어(array)에서 char가 포함되어 있는지 확인하기 
```swift
for char in word {
  if checker.contains(char) {
     // checker 안에 char가 있다면
  }
}
```
  
>## 아스키코드 값 뽑기
#### UnicodeScalar
```swift
// 아스키코드를 Int형으로 바꾸는 방법
var char = "A"  //무조건 Character이어야 한다.
UnicodeScalar(char)?.value //65 -> UInt32 (Int를 사용하고 싶으면 Int로 캐스팅 해주어야 함)

// Int를 아스키코드로 
let num = 97

//UnicodeScalar는 옵셔널을 반환하기 때문에 if let으로 바인딩해주었다.
if let num = UnicodeScalar(num){
    print(num)//a
}
```
#### str.utf  (편하게 아스키코드 뽑기)
```swift
let str = "abcDEF"

for index in str.utf16 {
    print(index)// 97 98 99 68 69
}
```

>## map() 함수 예시
#### 배열 한 줄에 뽑기
```swift
let input = Array(readLine()!)  // [ 4, 2, 3, 1]
// 입력 배열로 받기
var result = (input.map{ Int(String($0))! }).sorted().reversed()  // [ 4, 3, 2, 1]
// string 배열을 Int로 받고 + 오름차순 + 뒤집기
print(result.map { String($0) }.joined(separator: ""))  // 4321
// 배열을 string으로 받아서 seperator를 사이에 두고 배열 합치기

// 숫자를 배열로 만들기 ex) 123 -> [1,2,3]
let arr = String(num).map{Int(String($0))!}
// 배열에서 6이 몇 개 있는지 세보기
var result = arr.filter({ ($0) == 6 }).count

```
>## if문 축약형
```swift
var msg = number >= 20 ? "higger" : "lesser"
print (msg)
```

>## 2차원 배열
```swift
var arr : [[Int]] = Array(repeating: Array(repeating: 1,count:5 ), count: 3)
// arr -> [[1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]]

var arr2 = [[String]](repeating: Array(repeating: "iOS",count: 2 ), count: 4)
// arr2 -> //[["iOS", "iOS"], ["iOS", "iOS"], ["iOS", "iOS"], ["iOS", "iOS"]]
```
  
>## 같은 문자 찾기
- 크기가 정해진
```swift
let target = ["T", "A", "G", "A", "A", "T"]

let numA = target.filter { ($0) == "A" }.count
```
- 크기가 정해지지 X 빈 배열 선언
```swift
var my2Darr = Int[][]()
```
  
>## 문자 배열 문자열로 바꾸기
```swift
let target = ["T", "A", "G", "A", "A", "T"]
let answerStr = target.joined(separator: "-")
print(answerStr). // "T-A-G-A-A-T"
```

>## 줄바꿈없이 print()
```swift
print(1, 2, 3, 4, 5, separator: " / ") // Prints "1 / 2 / 3 / 4 / 5" 
print(1, 2, 3, 4, 5, separator: " / ", terminator: "END") // Prints "1 / 2 / 3 / 4 / 5END" 

for n in 1...5 {
    print(n, terminator: "")
}
// Prints "12345" (줄바꿈 없음)

print(terminator: "1") // Prints "1"
```
<!-- https://applecider2020.tistory.com/6 -->

>## 함수 만들기

1. 함수의 매개변수 이름 설정
```swift
func myFunction(name : String) -> String {
    return "안녕하세요? \(name)입니다."
}
myFunction(name: "조은")    //안녕하세요? 조은입니다.

```
  
2. 전달 인자 레이블
```swift
func myFunction(with name : String) -> String {
    return "안녕하세요? \(name)입니다."
}
myFunctionSecond(with: "Joeun")    //안녕하세요? Joeun입니다.

```
  
3. 전달 인자 레이블 사용 X   
=> `와일드 카드 식별자(_) 사용`
```swift
func myFunction(name : String) -> String {
    return "안녕하세요? \(name)입니다."
}
myFunctionThird("Joni")    //안녕하세요? Joni입니다.
```


