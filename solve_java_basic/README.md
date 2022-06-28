# java로 백준 단계별 문제풀기 

_백준에 문제 제출할 때는 패키지는 지우고, 클래스 이름을 Main으로 바꾼 후 제출해야한다._
  
>## charAt(i) 함수  
- String 타입의 데이터(문자열)에서 특정 문자를 char타입으로 변환할 때 사용하는 함수이다. i 자리에는 int형 변수를 넣어서 원하는 위치의 문자를 가져올 수 있다.

```java
String sample = "abc";  
char target = sample.charAt(0); //target = "a";
```

>## HashSet
- HashSet은 Set 인터페이스의 구현 클래스이다. 그렇기에 Set의 성질을 그대로 상속받는다. Set은 객체를 중복해서 저장할 수 없고 하나의 null 값만 저장할 수 있다. 또한 저장 순서가 유지되지 않는다. 만약 요소의 저장 순서를 유지해야 한다면 jdk 1.4부터 제공하는 LinkedHashSet 클래스를 사용한다. Set 인터페이스를 구현한 클래스로는 HashSet과 TreeSet이 있는데 HashSet의 경우 정렬을 해주지 않고 TreeSet의 경우 자동정렬을 해준다는 차이점이 있다.
**Set의 가장 큰 장점은 중복을 자동으로 제거해준다는 점이다.**

>## length |  length()  | size()
- length
    + array(int[], double[], String[])
    + length는 배열의 길이를 알고자 할 때 사용된다.
- length()
    + String related Object(String, StringBuilder etc)
    + length()는 문자열의 길이를 알고자 할 때 사용된다.
- size()
    + Collection Object(ArrayList, Set etc)
    + size()는 컬렉션프레임워크 타입의 길이를 알고자 할 때 사용된다.

    <!-- https://youngjinmo.github.io/2019/12/java-length-size/
    https://beingdesigner.tistory.com/24 예시 코드도 하나 작성해두자 -->

