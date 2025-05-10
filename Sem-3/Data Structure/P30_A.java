//lab 5 a30
import java.util.*;

class P30_A {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[][] a=new int[3][3];
        int[][] b= new int[3][3];
        System.out.println("enter 1st mat values:");
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++)
                a[i][j]=sc.nextInt();
        }
        System.out.println("enter 2nd mat values:");
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++)
                b[i][j]=sc.nextInt();
        }
        System.out.println("addintion ");
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                a[i][j]+=b[i][j];
            }
        }
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                System.out.println(a[i][j]);
            }
        }
        


        // int mat1[][] = new int[2][2];
        // int mat2[][] = new int[2][2];
        // int mat3[][] = new int[2][2];
        // System.out.println("enter 1st 2x2 matrix value here");
        // for (int i = 0; i < 2; i++) {
        //     for (int j = 0; j < 2; j++) {
        //         mat1[i][j] = sc.nextInt();
        //     }
        // }
        // System.out.println("enter 2nd 2x2 matrix value here");
        // for (int i = 0; i < 2; i++) {
        //     for (int j = 0; j < 2; j++) {
        //         mat2[i][j] = sc.nextInt();
        //     }
        // }
        // System.out.println("addition of matrix is:");
        // for (int i = 0; i < 2; i++) {
        //     for (int j = 0; j < 2; j++) {
        //         mat3[i][j] = mat1[i][j] + mat2[i][j];
        //     }
        // }

        // for (int i = 0; i < 2; i++) {
        //     for (int j = 0; j < 2; j++) {
        //         System.out.println(mat3[i][j]);
        //     }
        // }


    }
}