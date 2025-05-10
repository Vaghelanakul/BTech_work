import java.util.Scanner;

public class Lab2_p4 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter Fahrenheit");
        int f=sc.nextInt();
        double c = (f-32) * 5 /9;
        double f2= (c*9/5)+32;
        System.out.println("celsius is "+c);
        System.out.println("Fahrenheit is "+f2);
    }
}
