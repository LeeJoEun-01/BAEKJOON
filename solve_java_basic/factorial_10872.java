package baekjoon.solve_java_basic;

import java.util.Scanner;

public class factorial_10872 {
    
    public static void main(String[] args) {

        int num;
        int result = 1;

        Scanner sc = new Scanner(System.in);
        // System.out.println("원하는 숫자를 입력하세요. ");
        num = sc.nextInt();
        sc.close();

        for(int i=1; i<=num; i++) {
            result = result*i;
        }

        System.out.println(result);
        System.out.println(result);

    }
}
