import java.util.Scanner;

public class P28_C {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter size of array");
        int n = sc.nextInt();
        int arr[] = new int[n];
        double avg=0;
        System.out.println("enter" + n + "element");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }
        int sum = 0, min = arr[0], max = arr[0];
        for (int i = 0; i < n; i++) {
            sum += arr[i];
            if (arr[i]<min)
                min = arr[i];
            else if (arr[i]>max) {
                max = arr[i];
            }

        }
        avg = sum / n;
        System.out.println("sum of array is " + sum);
        System.out.println("min of array is:"+min);
        System.out.println("max of array is:"+max);
        System.out.println("avg of array is:"+avg);
    }
}
