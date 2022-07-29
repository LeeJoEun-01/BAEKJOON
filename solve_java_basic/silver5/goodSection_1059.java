import java.util.Scanner;

public class goodSection_1059 {

  public static void main(String[] args) {
    
    Scanner sc = new Scanner(System.in);

    int size = 0; // 집합의 크기
    String arrS[] = new String[size];  // 집합 S
    int target = 0; // 타겟: n
    int result = 0;

    size = sc.nextInt();
    for(int i=0; i<size; i++){
      arrS[i] = sc.next();
    }
    target = sc.nextInt();

    // 1. target(=n)을 기준으로 왼쪽 오른쪽 값 찾기 => left < target < right
    // 그런데 left나 right 값이 target과 동일하면 result = 0임으로 프로세스 종료
    int left = 0;
    int right = 0;
    for(int i=0; i<size; i++){
      int move = Integer.parseInt(arrS[i]);
      if(move > target){

      } else if (move < target) {

      } else{ // move == target
        result = 0;
      }
    }

    // 2. n을 포함한 좋은 구간의 개수를 구하는 경우

    if(left+1 == target){ // 왼쪽이 막힌 경우 
      result = right-target-1;
    } else if(right-1 == target) { // 오른 쪽이 막힌 경우
      result = target-left-1;
    } else { // 둘 다 아닌 경우
      result = (target-left)*(right-target)-1;
    }
  }
}
