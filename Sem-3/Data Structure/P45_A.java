
//lab 8 a45
import java.util.Scanner;
import java.util.Stack;

public class P45_A {
    public String polish = "";
    public int rank = 0;

    public int IPF(char c) {
        if (c == '+' || c == '-')
            return 1;
        if (c == '*' || c == '/')
            return 3;
        if (c == '^')
            return 6;
        if (c == '(')
            return 9;
        if (c == ')')
            return 0;
        return 7;
    }

    public int SPF(char c) {
        if (c == '+' || c == '-')
            return 2;
        if (c == '*' || c == '/')
            return 4;
        if (c == '^')
            return 5;
        if (c == '(')
            return 0;
        return 8;
    }

    public int calculateRank(char c) {
        if (c == '+' || c == '-' || c == '*' || c == '/' || c == '^')
            return -1;
        else
            return 1;
    }

    public void postfixString(String str) {
        String infix = str + ')';
        Stack<Character> stack = new Stack<>();
        stack.push('(');

        for (int i = 0; i < infix.length(); i++) {
            char nextChar = infix.charAt(i);

            while (SPF(stack.peek()) > IPF(nextChar)) {
                char temp = stack.pop();
                polish += temp;
                rank += calculateRank(temp);

                if (rank < 1) {
                    System.out.println("invalid inside loop");
                    return;
                }

            }
            if (SPF(stack.peek()) != IPF(nextChar)) {
                stack.push(nextChar);
            } else {
                stack.pop();
            }

        }
        if (!stack.isEmpty() || rank != 1) {
            System.out.println("invalid outside loop");
            return;
        }

        else{
        System.out.println("valid");
        System.out.println("polish string is:" + polish);
        }
    }

    public static void main(String[] args) {
        P45_A o1 = new P45_A();
        Scanner sc = new Scanner(System.in);
        System.out.println("enter infix ");
        String str = sc.nextLine();
        o1.postfixString(str);

    }
}