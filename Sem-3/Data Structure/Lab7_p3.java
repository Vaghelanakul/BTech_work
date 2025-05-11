//lab 7 b40
import java.util.*;

public class Lab7_p3 {

    public boolean checkString(String str){
        int countA=0;
        int countB=0;
        boolean foundB = false;
        for(int i=0;i<str.length();i++){
            if(str.charAt(i)=='a'){
                if(foundB){
                    System.out.println("invalid string");
                    return false;
                }
                countA++;
            }
            if(str.charAt(i)=='b'){
                foundB=true;
                countB++;
            }
        }
        if(countA==countB){
            System.out.println("valid");
            return true;
        }
        else    {
            System.out.println("invalid string");
            return false;
        }
        
    }
    public static void main(String[] args) {
        Lab7_p3 obj=new Lab7_p3();
        Scanner sc = new Scanner(System.in);
        System.out.println("enter a string with only a and b letters:");
        String str = sc.nextLine();
        obj.checkString(str);
    }

}
