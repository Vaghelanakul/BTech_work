//lab 7 a39
import java.util.*;

public class Lab7_p2 {
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
            stack.push(str.charAt(i));
            i++;

        }
        if (i == n || i==-1 ) {
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
        Lab7_p2 obj = new Lab7_p2();
        if (obj.validateString(str)) {
            System.out.println("valid string");
        }

    }

}
