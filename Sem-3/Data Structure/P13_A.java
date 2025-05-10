//lab 3 a13

import java.util.*;
class Lab3_p1{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("please enter size of array");
        int n=sc.nextInt();
        System.out.println(String.format("enter %d element", n));
        int arr[]=new int[n];
        for(int i=0;i<arr.length;i++){
            arr[i]=sc.nextInt();
        }
        System.out.println("enter elements is:");
        for(int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }
}