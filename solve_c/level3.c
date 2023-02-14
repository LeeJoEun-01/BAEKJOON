// 백준(단계별) - 반복문

// 2739_ 구구단
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d", &num);

//   for (int i = 1; i < 10; i++)
//   {
//     printf("%d * %d = %d\n", num, i, num * i);
//   }
// }

// 10950_ A+B-3
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d", &num);

//   for (int i = 0; i < num; i++)
//   {
//     int a;
//     int b;
//     scanf("%d %d", &a, &b);
//     printf("%d\n", a + b);
//   }
// }

// 8393_ 합
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   int sum = 0;
//   scanf("%d", &num);

//   for (int i = 1; i < num + 1; i++)
//   {
//     sum = sum + i;
//   }
//   printf("%d\n", sum);
// }

// 25304_ 영수증
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   int sum;
//   int result = 0;
//   scanf("%d\n", &sum);
//   scanf("%d\n", &num);

//   for (int i = 0; i < num; i++)
//   {
//     int price;
//     int n;
//     scanf("%d %d", &price, &n);

//     result = result + (price * n);
//   }

//   if (result == sum)
//   {
//     printf("Yes\n");
//   }
//   else
//   {
//     printf("No\n");
//   }
// }

// 15552_ 빠른 A+B
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d\n", &num);

//   for (int i = 0; i < num; i++)
//   {
//     int a;
//     int b;
//     scanf("%d %d", &a, &b);
//     printf("%d\n", a + b);
//   }
// }

// 11021_ A+B-7
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d\n", &num);

//   for (int i = 1; i < num + 1; i++)
//   {
//     int a;
//     int b;
//     scanf("%d %d", &a, &b);
//     printf("Case #%d: %d\n", i, a + b);
//   }
// }

// 11022 A+B-8
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d\n", &num);

//   for (int i = 1; i < num + 1; i++)
//   {
//     int a;
//     int b;
//     scanf("%d %d", &a, &b);
//     printf("Case #%d: %d + %d = %d\n", i, a, b, a + b);
//   }
// }

// 2438_ 별 찍기-1
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d", &num);

//   for (int i = 1; i < num + 1; i++)
//   {
//     for (int j = 0; j < i; j++)
//     {
//       printf("*");
//     }
//     printf("\n");
//   }
// }

// 2439_ 별 찍기-2
// #include <stdio.h>
// int main(void)
// {
//   int num;
//   scanf("%d", &num);

//   for (int i = 1; i < num + 1; i++)
//   {
//     for (int j = 0; j < num - i; j++)
//     {
//       printf(" ");
//     }
//     for (int j = 0; j < i; j++)
//     {
//       printf("*");
//     }
//     printf("\n");
//   }
// }

// 10952_ A+B-5
// #include <stdio.h>
// int main(void)
// {

//   while (1)
//   {
//     int a;
//     int b;
//     scanf("%d %d", &a, &b);
//     if (a == 0 && b == 0)
//     {
//       break;
//     }
//     printf("%d\n", a + b);
//   }
// }

// 10951_ A+B-4
// #include <stdio.h>
// int main(void)
// {
//   int a, b;
//   while (scanf("%d %d", &a, &b) != EOF)
//   {
//     printf("%d\n", a + b);
//   }
// }

// 1110_ 더하기 사이클
#include <stdio.h>
int main(void)
{
  int num;
  int count, result, n = 0;
  scanf("%d", &num);
  result = num;

  while (1)
  {
    int a, b = 0;
    a = num % 10;
    b = num / 10 + num % 10;
    n = a * 10 + b % 10;
    num = n;
    count++;

    if (result == n)
    {
      break;
    }
  }
  printf("%d\n", count - 1);
}