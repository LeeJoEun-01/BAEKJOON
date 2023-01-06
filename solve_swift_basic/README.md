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
- 최대,최소: `max(), min()`
- 배열 뒤집기: `reverse()`
- 오름차순으로 정렬: `sort()` && 새로운 배열을 오름차순으로 정렬하여 return: `sorted()`
- 소문자, 대문자: `lowercased(), uppercased()`
  
- 처음과 끝 인덱스: `startIndex, endIndex`
- 처음과 끝 인덱스의 값; `first, last`
```swift
var arr = [60,70,80,90,100]

arr.startIndex // 0
arr.endIndex // 5

arr.first // == arr[arr.startIndex] == 60
arr.last  // == arr[(arr.endIndex)-1] == 100
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
