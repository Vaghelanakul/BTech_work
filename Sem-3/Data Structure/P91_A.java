import java.util.Scanner;

public class P91_A {
    static int binarySearch(int arr[], int key) {
        boolean flag=false;
        int left = 0;
        int right = arr.length - 1;
        int mid = 0;
        while (left <= right) {
            mid = (left + right) / 2;
            if (arr[mid] == key) {
                flag=true;
                return mid;

            } else if (left < mid) {
                right = mid - 1;
            } else {
                left=mid+1;
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
        int val=binarySearch(arr, value);
        System.out.println("index of search element is:"+val);
    
    }
}
