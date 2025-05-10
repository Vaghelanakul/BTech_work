import java.util.*;

public class Practical6_1 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter char");
        char n = sc.nextLine().charAt(0);
        switch (n) {
            case 'a':
                System.out.println("vowel");
                break;
            case 'e':
                System.out.println("vowel");
                break;
            case 'i':
                System.out.println("vowel");
                break;
            case 'o':
                System.out.println("vowel");
                break;
            case 'u':
            System.out.println("vowel");
                break;
            default:
            System.out.println(" not vowel");
                break;
        }
    }
}