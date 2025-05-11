//lab 5 a30
import java.util.*;

class Lab5_p1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int mat1[][] = new int[2][2];
        int mat2[][] = new int[2][2];
        int mat3[][] = new int[2][2];
        System.out.println("enter 1st 2x2 matrix value here");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                mat1[i][j] = sc.nextInt();
            }
        }
        System.out.println("enter 2nd 2x2 matrix value here");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                mat2[i][j] = sc.nextInt();
            }
        }
        System.out.println("addition of matrix is:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                mat3[i][j] = mat1[i][j] + mat2[i][j];
            }
        }

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.println(mat3[i][j]);
            }
        }

    }
}