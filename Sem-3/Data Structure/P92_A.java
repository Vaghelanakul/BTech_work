import java.util.Scanner;

public class P92_A {
    static void bubbleSort(int arr[]) {
        int count = 0;
        int n=arr.length;
        for (int i = 0; i < n-1; i++) {
            for (int j = 0; j <n-i-1 ; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                    count++;
                }
                if(count==0)
                    System.out.println("not any element are swap");

            }
        }
        System.out.println("sorted array is:");
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }

    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d int", n));
        int arr[] = new int[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }
        System.out.println("befor sort array");
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
        bubbleSort(arr);

    }
}
