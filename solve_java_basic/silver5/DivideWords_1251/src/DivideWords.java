import java.util.Arrays;
import java.util.Scanner;

public class DivideWords {
    public static void main(String[] args) {
        String word;

        Scanner sc = new Scanner(System.in);
        // mobitel
        word = sc.next();
        System.out.println(word);

        // toCharArray() 이용
        char[] arrCh = word.toCharArray();
        // sort() 메서드 이용
        Arrays.sort(arrCh);

        System.out.println(arrCh);

        int[] charArr = new int[2];
        for (int i=0; i<2; i++) {
            // indexOfTestOne.indexOf("o")
            charArr[i] = word.indexOf(arrCh[i]);
            System.out.println(charArr[i]);
        }



    }

}
