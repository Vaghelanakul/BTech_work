import java.util.Scanner;
import java.util.Stack;

public class P47_A {
    int value = 0;

    public int calculate(int o1, int o2, char opt) {
        switch (opt) {
            case '+':
                value = o1 + o2;
                break;
            case '-':
                value = o1 - o2;
                break;
            case '*':
                value = o1 * o2;
                break;
            case '/':
                value = o1 / o2;
                break;
            case '%':
                value = o1 % o2;
                break;
        }
        return value;
    }

    public void evalutePostfix(String str) {
        Stack<Integer> stack = new Stack<>();
        for (int i = 0; i < str.length(); i++) {
            char temp = str.charAt(i);
            if (Character.isDigit(temp)) {
                int n=Integer.parseInt(String.valueOf(temp));
                stack.push(n);
            } else {
                int operand1 = stack.pop();
                int operand2 = stack.pop();
                int result = calculate(operand2, operand1, temp);
                stack.push(result);
            }
        }
        System.out.println("ans of this expression:"+stack.pop());
        
    }


    public static void main(String[] args) {
        P47_A o1=new P47_A();
        Scanner sc=new Scanner(System.in);
        System.out.println("enter infix expression with number:");
        String str=sc.next();
        o1.evalutePostfix(str);
    }
}
