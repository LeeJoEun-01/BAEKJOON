import java.util.Scanner;

public class Parallelogram_1064 {

  public static void main(String[] args) {
    
    Scanner sc = new Scanner(System.in);

    // 배열에 A(Xa, ya), B(Xb, Yb), C(Xc, Yc) 순서대로 입력 받기
    int[] x_y = new int[6];

    for(int i=0; i<6; i++){
      x_y[i] = sc.nextInt();
    }
    sc.close();

    // AB 길이 == CD 길이
    double ab = 0.0;
    ab = lengthCalc(x_y[0], x_y[1], x_y[2], x_y[3]);
    double ac = 0.0;
    ac = lengthCalc(x_y[0], x_y[1], x_y[4], x_y[5]);
    double bc = 0.0;
    bc = lengthCalc(x_y[2], x_y[3], x_y[4], x_y[5]);

    double max = 0.0;
    double min = 0.0;

    if(x_y[0]== x_y[2] && x_y[2] == x_y[4]){ // 세 점이 일직선 상에 있는 경우 1
      System.out.println("1");
      max = -1.0;
    } else if(x_y[1]== x_y[3] && x_y[3] == x_y[5]){// 세 점이 일직선 상에 있는 경우 2
      System.out.println("2");
      max = -1.0;
    // } else if((x_y[5]-x_y[1])!=0 && (x_y[3]-x_y[1])!=0 && (x_y[2]-x_y[0])/(x_y[3]-x_y[1]) == (x_y[4]-x_y[0])/(x_y[5]-x_y[1])){ //ab와 ac의 기울기가 같아 한 직선에 세 점이 위치한 경우
    //   System.out.println("3");
    //   max = -1.0;
    } else { // 위의 예외 상황이 아닌 경우
      if(ab > ac && ab > bc){
        if(ac > bc){
          max = (ab+ac)*2.0;
          min = (ac+bc)*2.0;
        }
        else{
          max = (ab+bc)*2.0;
          min = (ac+bc)*2.0;
        }
      } else if(ac > ab && ac > bc){
        if(ab > bc){
          max = (ac+ab)*2.0;
          min = (ab+bc)*2.0;
        }else{
          max = (ac+bc)*2.0;
          min = (ab+bc)*2.0;
        }
      } else{
        if(ab > ac){
          max = (ab+bc)*2.0;
          min = (ab+ac)*2.0;
        } else{
          max = (bc+ac)*2.0;
          min = (ab+ac)*2.0;
        }
      }
    }

    // System.out.println(max+" "+min);

    System.out.println(max-min);

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

}