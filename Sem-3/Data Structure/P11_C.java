//lab 1 c11

import java.util.Scanner;

public class P11_C {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter number:");
        int n=sc.nextInt();
        int totalsum=0;
        for (int i = 1; i <=n; i++) {
            int sum=0;
            for(int j=1;j<=i;j++ ){
                sum+=j;
            }
            totalsum+=sum;
        }
        System.out.println("total sum is:"+totalsum);
    }    
}
