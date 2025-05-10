//lab 3 a16

import java.util.Scanner;
public class P16_A {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d elements", n));
        int arr[] = new int[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }
        int smallestIndex = 0;
        int largestIndex = 0;
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] < arr[smallestIndex]) {
                smallestIndex = i;
            }
            if (arr[i] > arr[largestIndex]) {
                largestIndex = i;
            }
        }
        System.out.println("Smallest number is at position " + (smallestIndex + 1));
        System.out.println("Largest number is at position " + (largestIndex + 1));
    }
}