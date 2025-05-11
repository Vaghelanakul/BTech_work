
//lab 3 b17
import java.util.Scanner;

public class Lab3_p5 {
    public static void main(String[] args) {
        int count = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("please enter size of array");
        int n = sc.nextInt();
        System.out.println(String.format("enter %d elements", n));
        int arr[] = new int[n];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }

        for (int i = 0; i < arr.length; i++) {
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[i] == arr[j]) {
                    count++;
                }
            }
        }
        if (count > 0) {
            System.out.println("Duplicate elements  in array");
        } else {
            System.out.println("No duplicate elements in array");
        }
    }
}
