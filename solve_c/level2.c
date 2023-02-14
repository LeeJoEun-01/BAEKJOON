// 백준(단계별) - 조건문
// https://www.acmicpc.net/step/4

// 1330_ 두 수 비교하기
// #include <stdio.h>
// int main(void)
// {
//   int numA;
//   int numB;
//   scanf("%d %d", &numA, &numB);

//   if (numA > numB)
//   {
//     printf(">\n");
//   }
//   else if (numA < numB)
//   {
//     printf("<\n");
//   }
//   else
//   {
//     printf("==\n");
//   }
//   return 0;
// }

// 9498_ 시험 성적
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d", &num);

//   if (num >= 90)
//   {
//     printf("A\n");
//   }
//   else if (num >= 80)
//   {
//     printf("B\n");
//   }
//   else if (num >= 70)
//   {
//     printf("C\n");
//   }
//   else if (num >= 60)
//   {
//     printf("D\n");
//   }
//   else
//   {
//     printf("F\n");
//   }
//   return 0;
// }

// 2753_ 윤년
// #include <stdio.h>
// int main(void)
// {
//   int year;
//   scanf("%d", &year);

//   if (year % 4 == 0)
//   {
//     if (year % 400 == 0)
//     {
//       printf("1\n");
//     }
//     else if (year % 100 == 0)
//     {
//       printf("0\n");
//     }
//     else
//     {
//       printf("1\n");
//     }
//   }
//   else
//   {
//     printf("0\n");
//   }
//   return 0;
// }

// 14681_ 사분면 고르기
// #include <stdio.h>
// int main(void)
// {
//   int numX;
//   int numY;
//   scanf("%d", &numX);
//   scanf("%d", &numY);

//   if (numX > 0 && numY > 0)
//   {
//     printf("1\n");
//   }
//   else if (numX < 0 && numY > 0)
//   {
//     printf("2\n");
//   }
//   else if (numX < 0 && numY < 0)
//   {
//     printf("3\n");
//   }
//   else
//   {
//     printf("4\n");
//   }
//   return 0;
// }

// 2884_ 알람 시계
// #include <stdio.h>
// int main(void)
// {
//   int hr;
//   int min;
//   scanf("%d %d", &hr, &min);

//   if (min >= 45)
//   {
//     min = min - 45;
//     printf("%d %d\n", hr, min);
//   }
//   else
//   {
//     min = min + 15;
//     if (hr == 0)
//     {
//       hr = 23;
//     }
//     else
//     {
//       hr = hr - 1;
//     }
//     printf("%d %d\n", hr, min);
//   }
//   return 0;
// }

// 2525_ 오븐 시계
// #include <stdio.h>
// int main(void)
// {
//   int hr;
//   int min;
//   int min2;
//   scanf("%d %d\n", &hr, &min);
//   scanf("%d", &min2);

//   min = min + min2;

//   while (min >= 60)
//   {
//     min = min - 60;
//     if (hr == 23)
//     {
//       hr = 0;
//     }
//     else
//     {
//       hr = hr + 1;
//     }
//   }
//   printf("%d %d\n", hr, min);
//   return 0;
// }

// 2480_ 주사위 시계
#include <stdio.h>
int main(void)
{
  int dice1;
  int dice2;
  int dice3;
  scanf("%d %d %d", &dice1, &dice2, &dice3);

  if (dice1 == dice2 && dice2 == dice3)
  {
    printf("%d\n", 10000 + (dice1 * 1000));
  }
  else if (dice1 == dice2)
  {
    printf("%d\n", 1000 + (dice1 * 100));
  }
  else if (dice2 == dice3)
  {
    printf("%d\n", 1000 + (dice2 * 100));
  }
  else if (dice1 == dice3)
  {
    printf("%d\n", 1000 + (dice1 * 100));
  }
  else
  {
    if (dice1 >= dice2 && dice1 >= dice3)
    {
      printf("%d\n", dice1 * 100);
    }
    else if (dice2 >= dice1 && dice2 >= dice3)
    {
      printf("%d\n", dice2 * 100);
    }
    else
    {
      printf("%d\n", dice3 * 100);
    }
  }
  return 0;
}
