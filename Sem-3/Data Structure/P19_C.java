//lab 3 c19

import java.util.Scanner;

public class P19_C {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter number of row");
        int r = sc.nextInt();
        for (int i = 0; i < r; i++) {
            for (int space = 0; space < r - i; space++) {
                System.out.print(" ");
            }
            int n = 1;
            for (int j = 0; j <= i; j++) {
                System.out.print(n+" ");
                n = n * (i - j) / (j + 1);
            }
            System.out.println();
        }
    }
}
