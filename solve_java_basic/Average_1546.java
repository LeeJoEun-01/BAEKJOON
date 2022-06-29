package baekjoon.solve_java_basic;

import java.util.Scanner;

public class Average_1546 {
    
    public static void main(String[] args) {
        
        int num = 0;
        Scanner sc = new Scanner(System.in);

        System.out.println("시험 본  과목의 개수를 입력하세요! ");
        num = sc.nextInt();
        float[] arr = new float[num];

        System.out.println("과목의 성적을 입력하세요! ");
        for (int i=0; i<num; i++) {
            arr[i] = sc.nextInt();
        }

        sc.close();

        float max_num = 0f;
        // 성적 중에 최대값 찾기
        for (int i=0; i<num; i++) {
            if(max_num < arr[i]) {
                max_num = arr[i];
            }
        }
        System.out.println(max_num);

        //새로운 평균을 구하는 방법
        float sum = 0f;
        for (int i=0; i<num; i++) {
            arr[i] = (Float)arr[i]/max_num*100;
            sum += arr[i];
        }

        System.out.println(sum/num);


    }
}
