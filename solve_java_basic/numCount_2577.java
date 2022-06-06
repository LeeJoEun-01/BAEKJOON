package baekjoon.solve_java_basic;

import java.util.Scanner;

public class numCount_2577 {
    public static void main(String[] args) {

        int numA;
        int numB;
        int numC;
        int result;
        

        Scanner sc = new Scanner(System.in);
        // 첫째 줄에 A, 둘쨰 줄에 B, 셋째 줄에 C 입력
        numA = sc.nextInt();
        numB = sc.nextInt();
        numC = sc.nextInt();
        sc.close();

        result = numA*numB*numC;

        
    }
}
