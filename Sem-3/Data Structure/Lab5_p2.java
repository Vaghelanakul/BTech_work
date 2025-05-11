//lab 5 a31
import java.util.*;
public class Lab5_p2 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int mat1[][] = new int[3][2];
        int mat2[][] = new int[2][3];
        int mat3[][] = new int[3][3];
        System.out.println("enter 1st 3x2 matrix value here");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 2; j++) {
                mat1[i][j] = sc.nextInt();
            }
        }
        System.out.println("enter 2nd 2x3 matrix value here");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                mat2[i][j] = sc.nextInt();
            }
        }
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                for(int k=0;k<2;k++){
                    mat3[i][j]+=mat1[i][k]*mat2[k][j];
                }
            }
        }
        System.out.println("multiplication of 2 matrix is:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j <3; j++) {
                System.out.println(mat3[i][j]);
            }
        }
    }
}
