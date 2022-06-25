package baekjoon.solve_java_basic;

import java.util.HashSet;
import java.util.Scanner;

public class Remainder_3052 {
    
    public static void main(String[] args) {

    // 방법 1

        int[] arr1 = new int[10];  // 원하는 숫자들 입력받은 배열
        HashSet<Integer> h = new HashSet<>();

        System.out.println("원하는 숫자 10개를 입력하세요! ");
        Scanner sc = new Scanner(System.in);

        for (int i=0; i<10; i++) {
            arr1[i] = sc.nextInt();
            int num = arr1[i];
            h.add(num%42);
        }
        sc.close();

        System.out.println(h.size());

    // 방법 2

    }
}
