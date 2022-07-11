package baekjoon.solve_java_basic;

import java.util.Scanner;

public class OXquiz_8958 {

    public static void main(String[] args) {
        int num = 0;
        String str = " ";

        Scanner sc = new Scanner(System.in);
        
        System.out.println("테스트 케이스 개수를 입력해주세요! ");
        num = sc.nextInt();
        
        int[] result = new int[num];

        for( int i=0; i<num; i++) {
            int sum = 0;
            System.out.println("OX배열 테스트 케이스를 입력해주세요! ");
            str = sc.next();
            String[] arr;
            arr = str.split("");
            // System.out.println(arr.length);
            for( int j=0; j<arr.length; j++) {
                char target = str.charAt(j);
                char targetLeft = ' ';
                char targetLeftLeft = ' ';
                if( j > 0) {
                    targetLeft = str.charAt(j-1);
                }
                if( j > 1) {
                    targetLeftLeft = str.charAt(j-2);
                }
                if( target == 'O') {
                    if (targetLeft == 'O') {
                        if ( targetLeftLeft == 'O') {
                            sum += 3;
                        }
                        else {
                            sum += 2;
                        }
                    }
                    else {
                        sum += 1;
                    }
                }
                System.out.println(sum);
            }
            result[i] = sum ;
        }
        sc.close();

        System.out.println("정답");
        for (int answer : result) {
            System.out.println(answer);
        }
    }
}