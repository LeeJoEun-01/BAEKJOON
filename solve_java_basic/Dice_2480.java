package baekjoon.solve_java_basic;

import java.util.Scanner;

public class Dice_2480 {
    public static void main(String[] args) {
    
        int dice1 = 0;
        int dice2 = 0;
        int dice3 = 0;
        int reward = 0;
        Scanner sc = new Scanner(System.in);
        String[] arr = new String[3];
    
        for(int i=0; i<3; i++) {
          arr[i] = sc.next();
        }
        dice1 = Integer.valueOf(arr[0]).intValue();
        dice2 = Integer.valueOf(arr[1]).intValue();
        dice3 = Integer.valueOf(arr[2]).intValue();
    
        if (dice1 == dice2 && dice1 == dice3) {
            reward = 10000 + dice1*1000;
        } else {
          if (dice1 == dice2 || dice1 == dice3 || dice2 == dice3) {
            if (dice1 == dice2) {
              reward = 1000 + dice1*100;
            } else if (dice1 == dice3) {
              reward = 1000 + dice1*100;
            } else {
              reward = 1000 + dice2*100;
            }
          } else {
            if(dice1 > dice2 && dice1 > dice3) {
              reward = dice1*100;
            }else if(dice2 > dice1 && dice2 > dice3) {
              reward = dice2*100;
            } else {
              reward = dice3*100;
            }
          }
        }
        System.out.println(reward);
      }
}
