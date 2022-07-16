package baekjoon.solve_java_basic;

import java.util.Scanner;

public class AverageOver_4344 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int numC = 0;
        int numN = 0;
        float sum = 0.0f;
        float avg = 0.0f;
        float result = 0.0f;
        float[] ansArray;

        // System.out.println("테스트 케이스의 개수를 입력해주세요!");
        numC = sc.nextInt();
        ansArray = new float[numC];
        
        for(int i=0; i<numC; i++) {
            // System.out.println("학생 수를 입력해주세요!");
            numN = sc.nextInt();
            int[] scoreArr = new int[numN];
            sum = 0;
            // System.out.println("학생들의 점수를 입력해주세요!");
            for(int j=0; j<numN; j++) {
                scoreArr[j] = sc.nextInt();
                sum = sum + scoreArr[j];
            }

            int overStd = 0;
            avg = sum/numN;
            // System.out.println(avg);

            for(int h=0; h<numN; h++) {
                // System.out.println(scoreArr[h]);
                if(scoreArr[h] > avg) {
                    overStd++;
                }
            }
            result = (float) overStd/numN*100;
            ansArray[i] = result;
        }
        for( float target:ansArray) {
            System.out.printf("%.3f%%\n",target);
        }

    }
}
