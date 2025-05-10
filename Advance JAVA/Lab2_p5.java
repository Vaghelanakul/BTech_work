import java.util.Scanner;

public class Lab2_p5 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter 1st number:");
        int a=sc.nextInt();
        System.out.println("enter 2nd number:");
        int b=sc.nextInt();
        System.out.println("enter 3rd number:");
        int c=sc.nextInt();
        // if(a>b){
        //     if(a>c)
        //         System.out.println("max is"+a);
        //     else
        //         System.out.println("max is"+c);
            
        // }
        // else{
        //     if(b>c)
        //         System.out.println("max is"+b);
        //     else
        //         System.out.println("max is"+c); 
        // }

        
        // if(a>b && a>c)
        //     System.out.println("max is:"+a);
        // else if(b>a && b>c)
        //     System.out.println("max is:"+b);
        // else
        //     System.out.println("max is"+c);

        int max= (a>b && a>c)? a : (b>a && b>c)? b:c ;
        System.out.println("max is:"+max);
    }
}
