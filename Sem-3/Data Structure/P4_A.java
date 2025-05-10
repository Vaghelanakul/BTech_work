import java.util.*;

class P4_A
{
    public static void main(String[] args)
    {
        System.out.print("enter number:");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int fact = 1;
        for(int i=1;i<=n;i++){
            fact=fact*i;
        }
        System.out.print("Factorial = "+fact);
    }
}