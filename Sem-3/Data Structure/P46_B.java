import java.util.Scanner;
import java.util.Stack;

public class P46_B {

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

    public String reverseString(String str) {
        String revString = "";
        for (int i = str.length() - 1; i >= 0; i--) {
            if (str.charAt(i) == ')')
                revString += '(';
            else if (str.charAt(i) == '(')
                revString += ')';
            else
                revString += str.charAt(i);
        }
        return revString;
    }

    public void infixToPrifix(String str) {
        String revInfix = reverseString(str);
        String infix = revInfix + ')';
        Stack<Character> stack = new Stack<>();
        stack.push('(');
        for (int i = 0; i < infix.length(); i++) {
            char nextChar = infix.charAt(i);
            while (SPF(stack.peek()) > IPF(nextChar)) {
                char temp = stack.pop();
                polish += temp;
                rank += calculateRank(temp);
                if (rank < 1) {
                    System.out.println("Invalid inside loop");
                    return;
                }
            }
            if (SPF(stack.peek()) != IPF(nextChar)) {
                stack.push(nextChar);
            } else {
                stack.pop();
            }
        }
        while (!stack.isEmpty()) {
            char temp = stack.pop();
            if (temp != '(' && temp != ')') {
                polish += temp;
            }
        }
        String prefix = reverseString(polish);

        if (!stack.isEmpty() || rank != 1) {
            System.out.println("Invalid");
        } else {
            System.out.println("Prefix is: " + prefix);
        }
    }

    public static void main(String[] args) {
        P46_B o1 = new P46_B();
        Scanner sc = new Scanner(System.in);
        System.out.println("enter infix ");
        String str = sc.nextLine();
        o1.infixToPrifix(str);

    }
}

// import java.util.Scanner;
// import java.util.Stack;

// public class P46_B {

// public String polish = "";
// public int rank = 0;

// public int IPF(char c) {
// if (c == '+' || c == '-')
// return 1;
// if (c == '*' || c == '/')
// return 3;
// if (c == '^')
// return 6;
// if (c == '(')
// return 9;
// if (c == ')')
// return 0;
// return 7;
// }

// public int SPF(char c) {
// if (c == '+' || c == '-')
// return 2;
// if (c == '*' || c == '/')
// return 4;
// if (c == '^')
// return 5;
// if (c == '(')
// return 0;
// return 8;
// }

// public int calculateRank(char c) {
// if (c == '+' || c == '-' || c == '*' || c == '/' || c == '^')
// return -1;
// else
// return 1;
// }

// public String reverseString(String str) {
// String revString = "";
// for (int i = str.length() - 1; i >= 0; i--) { // Fix off-by-one error
// if (str.charAt(i) == ')')
// revString += '(';
// else if (str.charAt(i) == '(')
// revString += ')';
// else
// revString += str.charAt(i);
// }
// return revString;
// }

// public void infixToPrifix(String str) {
// String revInfix = reverseString(str);
// String infix = revInfix + ')';
// Stack<Character> stack = new Stack<>();
// stack.push('(');
// for (int i = 0; i < infix.length(); i++) {
// char nextChar = infix.charAt(i);
// while (SPF(stack.peek()) > IPF(nextChar)) {
// char temp = stack.pop();
// polish += temp;
// rank += calculateRank(temp);
// if (rank < 1) {
// System.out.println("Invalid inside loop");
// return;
// }
// }
// if (SPF(stack.peek()) != IPF(nextChar)) {
// stack.push(nextChar);
// } else {
// stack.pop();
// }
// }
// String prefix=reverseString(polish);

// if (!stack.isEmpty() || rank != 1) {
// System.out.println("Invalid");
// } else {
// System.out.println("Prefix is:" +prefix);
// }
// }

// public static void main(String[] args) {
// P46_B o1 = new P46_B();
// Scanner sc = new Scanner(System.in);
// System.out.println("Enter infix: ");
// String str = sc.nextLine();
// o1.infixToPrifix(str);
// }
// }
