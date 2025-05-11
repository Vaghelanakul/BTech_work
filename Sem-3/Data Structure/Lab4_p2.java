//lab 4 a22
import java.util.*;
public class Lab4_p2 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d element", n));
        int arr[] = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        System.out.println("please enter the position which you want to delete");
        int pos = sc.nextInt();
        for(int j=pos-1;j<n-1;j++){
            arr[j]=arr[j+1];
        }
        System.out.println("after deletion array is");
        for(int i=0;i<n-1;i++){
            System.out.println(arr[i]);
        }
    }
}
