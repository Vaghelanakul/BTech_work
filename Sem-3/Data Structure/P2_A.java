import java.util.*;

class P2_A
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("enter number:");
        int a = sc.nextInt();
        if(a%2==0)
            System.out.print("Even");
        else
            System.out.print("Odd");
    }
}