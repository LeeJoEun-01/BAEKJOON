// 백준에 java 코드로 제출할 때는 package 없애고
// 클래스 이름 Main으로 수정해서 제출!! 
package baekjoon.solve_java_basic;

import java.util.Scanner;

public class numCount_2577 {
    public static void main(String[] args) {

        int numA;
        int numB;
        int numC;
        int resultOfNum;
        String resultOfString = "";

        Scanner sc = new Scanner(System.in);
        System.out.println("원하는 숫자 A, B, C를 입력하세요. ");
        numA = sc.nextInt();
        numB = sc.nextInt();
        numC = sc.nextInt();
        sc.close();

        resultOfNum = numA*numB*numC;
        resultOfString = String.valueOf(resultOfNum);

        for( int i=0; i<10; i++) {
            int countNum = 0;
            for ( int j=0; j<resultOfString.length(); j++) {
                if(resultOfString.charAt(j)-'0' == i) {
                    countNum++;
                }
            }
            System.out.println(countNum);
        }

        System.out.println(resultOfString);
        System.out.println(resultOfString.length());

        
    }
}
