//lab 3 a14

import java.util.Scanner;

public class Lab3_p2 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int sum=0;
        System.out.println("enter 1st size:");
        int n=sc.nextInt();
        System.out.println("enter 2nd size:");
        int n1=sc.nextInt();
        if(n>n1){
            System.out.println("invalid");
        }
        else{
            int size=n1-n+1;
            int arr[]=new int[size];
            for(int i=0;i<size;i++){
                arr[i]=i;
                System.out.println(arr[i]);
            }
            for (int i = 0; i < arr.length; i++) {
                sum+=arr[i];
            }
            System.out.println("sum of elements is:"+sum);
            
        }
        

    }
}
