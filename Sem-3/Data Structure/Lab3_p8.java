//lab 3 c20

import java.util.Scanner;

public class Lab3_p8 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d string", n));
        String arr[] = new String[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.next();
        }
        for(int i=0;i<arr.length;i++){
            for(int j=0;j<n;j++){
                if(arr[i].charAt(0)<arr[j].charAt(0)){
                    String temp=arr[i];
                    arr[i]=arr[j];
                    arr[j]=temp;
                }
            }
        }
        System.out.println("loop is");
        for(int i=0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }
}
