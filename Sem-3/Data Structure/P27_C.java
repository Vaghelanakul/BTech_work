import java.util.Scanner;

public class P27_C {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter String ");
        String str=sc.next();
        String str1="";
        for(int i=0;i<str.length();i++){
            if(str.charAt(i)>=97 && str.charAt(i)<=122){
                str1+=(char)(str.charAt(i)-32);
            }
        }
        System.out.println(str1);
    }
}
