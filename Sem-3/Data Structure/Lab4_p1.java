//lab 4 a21
import java.util.Scanner;

public class Lab4_p1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d element", n));
        int arr[] = new int[n+1];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        System.out.println("please enter the position where you want to insert");
        int pos = sc.nextInt();
        System.out.println("please enter the value");
        int val = sc.nextInt();
        for(int i=n;i>pos-1;i--){
            arr[i]=arr[i-1];
        }
        arr[pos-1]=val;
        System.out.println("after insert array is");
        for(int j=0;j<=n;j++){
            System.out.println(arr[j]);
        }
        

    }
}
