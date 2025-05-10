import java.util.*;

class P1_A
{
    public static void main(String[] args)
    {   
        Scanner sc = new Scanner(System.in);
        System.out.print("enter radius:");
        double r = sc.nextDouble();
        double area = Math.PI*r*r;
        System.out.print(area);
    }
}