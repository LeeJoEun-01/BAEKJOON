# C언어 스터디

## 목차
[1. 프로그래밍 시작](#프로그래밍-시작)  
[2. C 프로그램을 이루는 구성 요소](#C-프로그램을-이루는-구성-요소)  
[3. 기본 자료형](#3.기본-자료형)  
[4. 제어의 흐름](#4.제어의-흐름)  
[5. 조건문](#조건문)  
[6. 반복문](#반복문)  

# 프로그래밍 시작
- `printf("")`: 화면에 출력하는 함수
```c
#include <stdio.h>
int main(void)
{
  printf("%f * %f = %f\n", 12.9, 8.8, 12.9 * 8.8);
  return 0;
}
```
- `scanf()`: 대표적인 입력 함수
  - 입력 받는 값을 변수에 넣고 싶을 때 변수 앞에 `&`를 꼭 써주어야 한다.
```c
#include <stdio.h>
int main(void)
{
  printf("정수를 입력하세요: ");
  scanf("%d", &value);
  return 0;
}
```

# 2. C 프로그램을 이루는 구성 요소
- 한 줄 주석: `//`
- 여러 줄 주석: `/*  */`
- 키워드
<img width="627" alt="스크린샷 2023-02-10 오후 3 18 24" src="https://user-images.githubusercontent.com/78733700/218017396-1250d214-9277-474f-94d6-ecd4bc118973.png">
  - 예약된 단어, 다른 의미로 재정의할 수 없음 (변수나 함수 이름으로 사용할 수 없음)
  - C 언어에서 고유한 의미를 가지는 토큰

```c
#include <stdio.h>
int main(void)
{
  int radius;
  int diameter;
  float pi;
  return 0;
}
```
- 식별자
- 

# 3.기본 자료형

# 4.제어의 흐름

# 조건문

```c
#include <stdio.h>
int main(void)
{
  int dice1;
  int dice2;
  int dice3;
  scanf("%d %d %d", &dice1, &dice2, &dice3);

  if (dice1 == dice2 && dice2 == dice3)
  {
    // 문장문장;
  }
  else if (dice1 == dice3)
  {
    // 문장문장;
  }
  else
  {
    // 문장문장;
  }
  return 0;
}
```
  
# 반복문
- for문
```c
for (int i = 1; i < 10; i++)
{
  // 문장문장;
}
```

- while문
```c
while (result != num)
{
  // 문장문장;
}
```

- while 무한루프
```c
while (1)
{
  if (result == num)
  {
    break;
  }
}
```

> ## End Of File (EOF)
- End of File의 약어로, "파일의 끝을 표현한 상수로 -1 값을 지칭" 
- 즉, 파일을 대상으로 fgetc (읽기함수)가 호출되었을 때 그 파일의 끝에 도달하면 EOF (= -1)이 반환되어 끝을 알린다.
- window: (Ctrl+Z) / Linux: (Ctrl+D)

