import java.util.Scanner;

public class Lab2_p2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter 1st number");
        int a = sc.nextInt();
        System.out.println("enter 2nd number");
        int b = sc.nextInt();
        System.out.println("enter operator");
        char opt = sc.next().charAt(0);
        switch (opt) {
            case '+':
                int add = (a + b);
                System.out.println("addition is:" + add);
                break;
            case '-':
                int sub = (a - b);
                System.out.println("addition is:" + sub);
                break;
            case '*':
                int mul = (a * b);
                System.out.println("addition is:" + mul);
                break;
            case '/':
                double div = (double)a / b;
                System.out.println("addition is:" + div);
                break;
            case '%':
                int mod= (a % b);
                System.out.println("addition is:" + mod);
                break;
            default:
            System.out.println("invalid operator");
                break;
        }

    }
}
