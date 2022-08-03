import java.util.Scanner;

// String -> char 변환 + char -> 아스키코드 변환 https://devyoseph.tistory.com/43 
// 정렬은 되는대 중복값을 제외시키지 못함.....이것만 해결하면 OK

public class SortingWord_1181 {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int numN = 0; // 단어 개수
        numN = sc.nextInt();

        String[] words = new String[numN];
        for(int i=0; i<numN; i++){
            words[i] = sc.next();
        }
        sc.close();

        // 길이가 짧은 것 부터
        // 길이가 같으면 사전순으로 정렬

        // 길이가 짧은 것부터 순서대로 정렬
        String space = " ";
        for(int i=0; i<numN; i++){
            for(int j=i; j<numN; j++){
                if( words[i].length() < words[j].length() ){
                    
                } else if( words[i].length() == words[j].length() ){ //길이가 같은 경우
                    for(int h=0; h<words[i].length(); h++){
                        char wordA = words[i].charAt(h);
                        char wordB = words[j].charAt(h);
                        // 같은 길이의 같은 문자가 있는 경우 삭제
                        // 중복되는 요소 삭제하고 인덱스 하나씩 땡겨주기
                        if(words[i] == words[j]){
                            break;
                        } else if( wordA != wordB){
                            // 소문자만 있는 경우 아스키코드가 클 수록 사전에서 뒤에 위치한다.
                            if((int)wordA < (int)wordB){
                                if( i > j){
                                    space = words[i];
                                    words[i] = words[j];
                                    words[j] = space;
                                }
                                break;
                                // 사전 순으로 정렬하는 것을 두 단어를 비교했을 때 최초로 달랐던 문자만 필요함으로 한 번 비교하여 정렬하였으면
                                // for 반복문을 탈출한다.
                            }
                        }
                    }
                } else {
                    space = words[i];
                    words[i] = words[j];
                    words[j] = space;
                }

            }
            // System.out.println("-----");
            // for( String word : words){
            //     System.out.println(word);
            // }
        }

        // 정답 출력 
        for(String word:words){
            System.out.println(word);
        }
    }
}
