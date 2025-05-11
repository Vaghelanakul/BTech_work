//lab3 b18

import java.util.Scanner;

public class Lab3_p6 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d elements", n));
        int arr[] = new int[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }
        System.out.println("enter the number where you want to replace");
        int val1 = sc.nextInt();
        System.out.println("enter new value that you want to replace");
        int val2 = sc.nextInt();
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == val1) {
                arr[i] = val2;
                System.out.println("index of value 2 :"+(i+1));
                break;
            }
        }
        System.out.println("array after replacement");
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }

}