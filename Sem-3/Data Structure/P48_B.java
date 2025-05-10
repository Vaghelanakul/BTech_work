import java.util.Scanner;
import java.util.Stack;
public class P48_B {
    int value=0;
    public int calculate(int o1,int o2,char opt){
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
    public void evalutePrefix(String str){
        Stack<Integer> stack = new Stack<>();
        for(int i=str.length()-1;i>=0;i--){
            char temp=str.charAt(i);
            if(Character.isDigit(temp)){
                int n=Integer.parseInt(String.valueOf(temp));
                stack.push(n);
            }
            else{
                int oprand1=stack.pop();
                int oprand2=stack.pop();
                int result = calculate(oprand1, oprand2, temp);
                stack.push(result);
            }
        }
        System.out.println("evalution of prefix expression is:"+stack.pop());
    }
    public static void main(String[] args) {
        P48_B o1=new P48_B();
        Scanner sc = new Scanner(System.in);
        System.out.println("enter prefix string for evalution:");
        String str = sc.next();
        o1.evalutePrefix(str);

    }
}
