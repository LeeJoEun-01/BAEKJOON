# Swift로 백준 단계별 문제풀기 

>## 자주 까먹는 것들...
```swift
// 배열 선언
let arr : Array<Int> = []

```
  
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
- 최대,최소: `max(), min()`
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

```
