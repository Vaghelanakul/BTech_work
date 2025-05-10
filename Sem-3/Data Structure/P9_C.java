import java.util.*;
public class P9_C {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter second here");
        int s=sc.nextInt();
        double h=s/3600;
        double m= (s%3600)/60;
        double sec=s%60;
        System.out.println("second:"+sec+"-minute:"+m+"-hours"+h);

    }
}
