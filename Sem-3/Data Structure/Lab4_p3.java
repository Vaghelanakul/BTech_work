//lab 4 a23
import java.util.*;
public class Lab4_p3 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int swap;
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d element", n));
        int arr[] = new int[n+1];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        System.out.println("please enter new element value");
        int val = sc.nextInt();
        arr[n]=val;
        for(int i=0;i<n+1;i++){
            for(int j=i+1;j<=n;j++){
                if(arr[i]>arr[j]){
                    swap=arr[i];
                    arr[i]=arr[j];
                    arr[j]=swap;
                }
            }
        }
        System.out.println("after adding element in array");
        for(int i=0;i<=n;i++){
            System.out.println(arr[i]);
        }

    }
}
