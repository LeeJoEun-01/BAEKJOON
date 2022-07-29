import java.util.Scanner;

public class bridge_1010 {

 public static void main(String[] args) {
  
  int t = 0;
  int n = 0;
  int m = 0;
  double ans = 0;

  Scanner sc = new Scanner(System.in);
  t = sc.nextInt(); 
  
  for(int i=0; i<t; i++) {
    n = sc.nextInt();
    m = sc.nextInt();

    Double num1 = factorial(n);
    Double num2 = factorial(m);
    Double num3 = factorial(m-n);

    ans = num2/(num1*num3);
    System.out.printf("%.0f\n",ans); 
  }

  sc.close();
 }

 // factorial을 계산하면 수가 너무 커져서 int와  long을 사용하면 overflow 문제가 발생
 // 그래서 double로 계산하고 출력할 때 소수점 없이 출력 System.out.printf("%.0f\n",ans); 
 public static double factorial(int num){
  double result = 1;
  double n = (double)num;

  for(double i=1; i<=n; i++) {
    result = result*i;
  }

  return result;
}
  
}

