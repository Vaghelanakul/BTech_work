import java.util.*;
public class P90_A {
    static int linearSearch(int arr[],int key){
        for(int i=0;i<arr.length;i++){
            if(arr[i]==key){ 
                System.out.println("index of search element is:"+(i+1));
                break;
            }
        }
        return -1;
}
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d int", n));
        int arr[] = new int[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }
        System.out.println("enter the element you want to search:");
        int value=sc.nextInt();

        linearSearch(arr, value);
        
       
        
    }
}
