//lab 3 a15

import java.util.Scanner;

public class P15_A {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int sum=0,avg=0;
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d element", n));
        int arr[] = new int[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
            sum+=arr[i];
        }
        
        avg=sum/n;
        System.out.println("avg of n number is:"+avg);
    }
}
