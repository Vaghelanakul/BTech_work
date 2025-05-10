import java.util.*;

class P3_A
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("enter character:");
        char a = sc.next().charAt(0);
        if(a=='a' || a=='e' || a=='i' || a=='o' || a=='u' || a=='A' || a=='E' || a=='I' || a=='O' || a=='U' )
            System.out.print("Entered Character is Vowels");
        else
            System.out.print("Entered Character is not Vowels");
    }
}