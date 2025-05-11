//lab 7 a38
import java.util.*;

class Stack {
    public int[] stack;
    public int top;

    public Stack(int size) {
        stack = new int[size];
        top = -1;
    }

    public void push(int x) {
        if (top >= stack.length) {
            System.out.println("stack is overflow");
        } else {
            top++;
            stack[top] = x;
            System.out.println("pushed value is:" + x);
        }
    }

    public void pop() {
        if (top == -1) {
            System.out.println("stack is underflow");
        } else {
            System.out.println("pop value is:" + stack[top--]);
        }
    }

    public void peep(int i) {
        if (top == -1) {
            System.out.println("stack is underflow");
        } else {
            System.out.println("peep element is:" + stack[top - i + 1]);
        }
    }

    public void change(int x, int i) {
        if (stack[top - i + 1] <= 0) {
            System.out.println("stack is underflow");
        } else {
            stack[top - i + 1] = x;
            System.out.println("change value is:" + stack[top - i + 1]);
        }
    }

    public void display() {
        for (int i = top; i <=top; i++) {
            System.out.println(stack[i]);
        }
    }

}

class Lab7_p1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter size of stack");
        int s = sc.nextInt();
        Stack obj = new Stack(s);
        
        while (true) {
            System.out.println("enter choice 1st for push \n 2nd for pop \n 3rd for peep \n 4th for display");
        int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.println("enter the value to push");
                    int x = sc.nextInt();
                    obj.push(x);
                    break;
                case 2:
                    obj.pop();
                    break;
                case 3:
                    System.out.println("enter the value to peep");
                    int i = sc.nextInt();
                    obj.peep(i);
                    break;
                case 4:
                    System.out.println("Stack is:");
                    obj.display();
                    break;
                case 5:
                    System.exit(s);
                default:
                    break;
            }  
            
        }
    }
}