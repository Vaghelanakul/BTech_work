import java.util.Scanner;

public class P5_A {
    public int factorial(int n){
        if(n==0)
            return 1;
        return n*factorial(n-1);
    }
    public static void main(String[] args) {
        P5_A obj = new P5_A();
        Scanner sc=new Scanner(System.in);
        System.out.println("enter number:");
        int n=sc.nextInt();
        int r=obj.factorial(n);
        System.out.println("factorial is:"+r);
    }
}
