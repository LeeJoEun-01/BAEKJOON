import java.util.Scanner;

public class Parallelogram_1064 {

  public static void main(String[] args) {
    
    Scanner sc = new Scanner(System.in);

    // 배열에 A(Xa, ya), B(Xb, Yb), C(Xc, Yc) 순서대로 입력 받기
    int[] coordinate = new int[6];

    for(int i=0; i<6; i++){
      coordinate[i] = sc.nextInt();
    }
    sc.close();

    // D 좌표
    int x = 0;
    int y = 0;

    // AB 길이 == CD 길이
    double ab = 0.0;
    ab = lengthCalc(coordinate[0], coordinate[1], coordinate[2], coordinate[3]);
    double cd = 0.0;

    // AD 길이 == BC 길이
    double ad = 0.0;

    double bc = 0.0;
    bc = lengthCalc(coordinate[2], coordinate[3], coordinate[4], coordinate[5])

  }

  // 길이 구하는 함수
  public static double lengthCalc (int x1, int y1, int x2, int y2){
    double result = 0.0;
    double xSquare = 0.0;  // Math.pow() 메소드의 반환 값이 double임으로 double로 선언
    double ySquare = 0.0;

    if (x1 > x2){
      xSquare = Math.pow((x1-x2),2);
      ySquare = Math.pow((y1-y2), 2);
      result = xSquare + ySquare;
      result = Math.sqrt(result);
    } else {
      xSquare = Math.pow((x2-x1),2);
      ySquare = Math.pow((y2-y1), 2);
      result = xSquare + ySquare;
      result = Math.sqrt(result);
    }

    return result;

  }

  // D의 좌표 구하는 함수
  public static double[] dCoordinate(int x1, int y1, int x2, int y2, double target1, double target2){ // A와 C의 좌표와  target은 같아야 하는 변의 길이 (ab길이, bc길이)
    int x = 0;
    int y = 0;
    double result1 = 0.0;
    double result2 = 0.0;
    double[] minmaxLength = new double[2];
    minmaxLength[0] = 0.0000001;
    minmaxLength[1] = 0.0000001;

    for(x= -5000; x<=5000; x++){
      for(y= -5000; y<=5000; y++){
        result1 = lengthCalc(x1, y1, x, y); // AD 길이
        result2 = lengthCalc(x2, y2, x, y); // CD 길이
        if(target1 == result2 && target2 == result1){
        // !! 굳이 좌표를 배열에 담을 필요가 없다! 답을 구하기 위해 필요한 값은 최소 둘래와 최대 둘래임으로 그것만 배열에 담자!

          // if(minmaxLength[0] > target){
          //   minmaxLength[0] = target;
          // }
          // if(minmaxLength[1] < target){
          //   minmaxLength[1] = target;
          // }

        }
      }
    }

    return minmaxLength;

  }

}