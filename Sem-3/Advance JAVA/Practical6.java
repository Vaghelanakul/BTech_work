import java.util.Scanner;

public class Practical6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter character:");
        char n = sc.nextLine().charAt(0);
        if (n == 'a'|| n == 'e' || n == 'i' || n == 'o' || n == 'u') {
            System.out.println("enter char is vowel");
        }
        else{
            System.out.println("not vowel");
        }

    }
}
