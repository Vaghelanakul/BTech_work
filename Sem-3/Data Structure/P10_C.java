import java.util.*;
public class P10_C {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter day here");
        int d=sc.nextInt();
        int year=d/366;
        int week=(d%366)/7;
        int day=d%366;
        System.out.println("days:"+day+"-week:"+week+"-years:"+year);

    }
}
