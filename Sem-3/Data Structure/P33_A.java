// //lab 6 a33

import java.util.Scanner;

public class P33_A {
    static void swap(int a, int b) {
        int temp = a;
        a = b;
        b = temp;
        System.out.println("after swapping");
        System.out.println("value of 1st element is:" + a + "and value of 2nd element is:" + b);
    }
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.println("enter 1st number:");
        int a = sc.nextInt();
        System.out.println("enter 2nd number:");
        int b = sc.nextInt();
        System.out.println("before swapping");
        System.out.println("value of 1st element is:" + a + "and value of 2nd element is:" + b);
        swap(a, b);
    }
    
    
}
