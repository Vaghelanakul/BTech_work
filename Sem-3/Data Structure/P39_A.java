
//lab 7 a39
import java.util.*;

public class P39_A {
    public class Stack {
        public char stack[];
        public int top;

        public Stack(int size) {
            stack = new char[size];
            top = -1;
        }

        public void push(char x) {
            if (top >= stack.length - 1) {
                System.out.println("stack is overflow");
            } else {
                top++;
                stack[top] = x;
            }
        }

        public char pop() {
            if (top == -1) {
                System.out.println("stack is empty");
                return '\0';
            } else {
                return stack[top--];
            }
        }

    }

    public boolean validateString(String str) {
        int n = str.length();
        Stack stack = new Stack(n);
        int i = 0;

        while (i < n && str.charAt(i) != 'c') {
            if (str.charAt(i) == ' ') {
                System.out.println("invalid string");
                return false;
            } else {
                stack.push(str.charAt(i));
                i++;
            }

        }
        if (i == n || i == -1) {
            System.out.println("invalid string");
            return false;
        }
        i++;
        while (i < n && stack.top != -1) {
            char nextChar = str.charAt(i);
            char popChar = stack.pop();
            if (nextChar != popChar) {
                System.out.println("invalid String");
                return false;
            }
            i++;
        }
        if (stack.top != -1) {
            System.out.println("Invalid string");
            return false;
        }
        return true;

    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter a String");
        String str = sc.nextLine();
        P39_A obj = new P39_A();
        if (obj.validateString(str)) {
            System.out.println("valid string");
        }

    }

}
