import java.util.Scanner;

public class P91_Recursion {
    static int binarySearch(int arr[],int left,int right, int key) {
        
        int mid = 0;
        if (left <= right) {
            mid = (left + right) / 2;
            if (arr[mid] == key) {
                return mid;
            } else if (key < mid) {
                return binarySearch(arr, left, mid-1, key);
            } else  {
                return binarySearch(arr, mid+1, right, key);
                
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
        int left = 0;
        int right = arr.length - 1;
        int val=binarySearch(arr,left,right,value);
        System.out.println("index of search element is:"+val);
    
        
    
    }
}
