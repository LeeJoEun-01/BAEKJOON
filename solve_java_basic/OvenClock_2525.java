package baekjoon.solve_java_basic;

import java.util.Scanner;

public class OvenClock_2525 {
    public static void main(String[] args) {
    
        Scanner sc = new Scanner(System.in);
    
        int a=0;
        int b=0;
        int c=0;
        String[] arr = new String[3];
    
        for(int i=0; i<3; i++) {
          arr[i] = sc.next();  // 입력할 때 사이에 공백을 기준으로 받는다 (enter가 아닌) https://splendidlolli.tistory.com/64
        }
        sc.close();
        a = Integer.valueOf(arr[0]).intValue();
        b = Integer.valueOf(arr[1]).intValue();
        c = Integer.valueOf(arr[2]).intValue();
    
    
        b = b + c;
        while(b >=60) {
          a = a+1;
          if ( a == 24) {
            a = 0;
          }
          b = b-60;
        }
        System.out.println( a + " " + b);
      }
}
