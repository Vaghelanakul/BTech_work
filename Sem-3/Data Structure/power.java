import java.util.Scanner;
class power{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter base value");
        int base=sc.nextInt();
        System.out.println("enter power value");
        int pov=sc.nextInt();
        int res=1;
        for(int i=1;i<=pov;i++){
            res*=base;
        }
        System.out.println(res);
    }
}