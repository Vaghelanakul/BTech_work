import java.util.Scanner;

public class Practical7 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter name:");
        String name=sc.nextLine();
        System.out.println("enter Roll no:");
        String no=sc.nextLine();
        System.out.println("enter SPI:");
        String spi=sc.nextLine();
        System.out.println("enter marks of 5 subs:");
        System.out.println("enter marks of 1st sub:");
        int a=sc.nextInt();
        System.out.println("enter marks of 2nd sub:");
        int b=sc.nextInt();
        System.out.println("enter marks of 3rd sub:");
        int c=sc.nextInt();
        System.out.println("enter marks of 4th sub:");
        int d=sc.nextInt();
        System.out.println("enter marks of 5th sub:");
        int e=sc.nextInt();
        System.out.println("name:"+name);
        System.out.println("Roll no:"+no);
        System.out.println("SPI:"+spi);
        int total=a+b+c+d+e;
        System.out.println("Total of 5 sub is:"+total);
        System.out.println("Total marks of 5 sub is:"+((total/500)*100));

    }
}
