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
