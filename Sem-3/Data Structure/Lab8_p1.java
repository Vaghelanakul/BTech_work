//lab 8 a45
import java.util.Scanner;
import java.util.Stack;

public class Lab8_p1 {
    public String polish="";
    public int rank=0;
    

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

    public int rank(char c) {
        if (c == '+' || c == '-' || c == '*' || c == '/' || c == '^')
            return -1;
        else
            return 1;
    }

    public void postfixString(String str) {
        String infix=str+')';
        Stack<Character> stack = new Stack<>();
        stack.push('(');
        for(int i=0;i<infix.length();i++){
            char nextChar=infix.charAt(i);
            if(stack.peek()<0){
                System.out.println("invalid");
            }
            if(SPF(stack.peek())>IPF(nextChar)){
                char temp= stack.pop();
                polish+=temp;
                rank+=rank(nextChar);
            }
            if(SPF(stack.peek())!=IPF(nextChar)){
                stack.push(nextChar);
            }
            else{
                stack.pop();
            }

            
        }
        System.out.println("polish string is:"+polish);

    }

    public static void main(String[] args) {
        Lab8_p1 o1=new Lab8_p1();
        Scanner sc = new Scanner(System.in);
        System.out.println("enter infix ");
        String str = sc.nextLine();
        o1.postfixString(str);
        



    }
}