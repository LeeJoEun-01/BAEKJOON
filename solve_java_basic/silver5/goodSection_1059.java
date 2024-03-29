import java.util.Scanner;

public class goodSection_1059 {

  public static void main(String[] args) {
    
    Scanner sc = new Scanner(System.in);

    int size = 0; // 집합의 크기
    int target = 0; // 타겟: n
    int result = 1; //정답

    size = sc.nextInt();
    String arrS[] = new String[size];  // 집합 S

    for(int i=0; i<size; i++){
      arrS[i] = sc.next();
    }
    target = sc.nextInt();

    sc.close();

    // 1. target(=n)을 기준으로 왼쪽 오른쪽 값 찾기 => left < target < right
    // 그런데 left나 right 값이 target과 동일하면 result = 0임으로 프로세스 종료
    int left = 0;
    int right = 1001;
    for(int i=0; i<size; i++){
      int move = Integer.parseInt(arrS[i]);
      if(move < target) { // left = target보다 작은 수들 중에서 제인 큰 수
        if(move > left) {
          left = move;
          // System.out.println(left);
        }
      } else if (move > target) { // right = target보다 큰 수들 중에서 제일 작은 수
        if(move < right) {
          right = move;
          // System.out.println(right);
        }
      } else{ // move == target
        result = 0;
      }
    }

    // 2. n을 포함한 좋은 구간의 개수를 구하는 경우

    if(result != 0){ 
      //result를 맨  처음에 선언하고 초화할 때  1로 초기화 함
      // 위에서 left와 right를 찾다가 target과 같은 수가 있가면 결과는 0임으로
      // result가 0이 아닌 때는 left와 right의 같이 제대로 존재하며 target과 같은 수를 가지고 있지 않은 집합임으로
      // 좋은 구간을 구하는 공식에 대입하여 result를 구한다.
      
      if(left+1 == target){ // 왼쪽이 막힌 경우 
        result = right-target-1;
      } else if(right-1 == target) { // 오른 쪽이 막힌 경우
        result = target-left-1;
      } else { // 둘 다 아닌 경우
        result = (target-left)*(right-target)-1;
      }
    }

    System.out.println(result);
  }
}
