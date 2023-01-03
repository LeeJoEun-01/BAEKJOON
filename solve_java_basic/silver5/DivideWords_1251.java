import java.util.Arrays;
import java.util.Scanner;

public class DivideWords_1251 {
    public static void main(String[] args) {
        String word;

        Scanner sc = new Scanner(System.in);
        // mobitel
        word = sc.next();
        //System.out.println(word);

        // toCharArray() 이용
        char[] arrCh = word.toCharArray();
        // sort() 메서드 이용  (알파벳 순서가 앞인거부터 정렬)
        Arrays.sort(arrCh);

        //System.out.println(arrCh);

        int[] charArr = new int[2];
        for (int i=0; i<2; i++) {
            //알파벳 순서가 빠른 두  알파벳 인덱스를 찾아 그  앞에서 단어를 나눠준다.
            charArr[i] = word.indexOf(arrCh[i]);
            //System.out.println(charArr[i]);
        }

        //Char charAt(int index)

        int one = charArr[0];
        int two = charArr[1];

        if (word.charAt(one) == word.charAt(one+1)){
            one = one + 1;
        }
        if (word.charAt(two) == word.charAt(two+1)){
            two = two + 1;
        }
        //System.out.println(one + "   "+ two);

        //단어 나누기 substring: https://byul91oh.tistory.com/309 

        StringBuffer word1  = new StringBuffer(word.substring(0,one+1));
        String reverseWord1 = word1.reverse().toString();
        StringBuffer word2  = new StringBuffer(word.substring(one+1, two+1));
        String reverseWord2 = word2.reverse().toString();
        StringBuffer word3  = new StringBuffer(word.substring(two+1));
        String reverseWord3 = word3.reverse().toString();

        String result = reverseWord1 + reverseWord2 + reverseWord3;
        System.out.println(result);

        // mobiteel  중복된 문자 처리하는 코드 추가 필요

    }

}
