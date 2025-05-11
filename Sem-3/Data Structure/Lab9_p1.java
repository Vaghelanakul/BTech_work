
import java.util.Scanner;

//lab 9 a50


public class Lab9_p1 {    
    static int q[];
    static int f=0;
    static int r=0;
    static int n;

    public void  enqueue(int x){
        if(r==n){
            System.out.println("queue overflow");
            return;
        }
        r++;
        q[r]=x;
        if(f==0){
            f++;
        }
    }
    public void dqueue(){
        if(f==0){
            System.out.println("queue is overflow");
            return 0;
        }
        f++;
    }
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter queue size");
        n=sc.nextInt();
        q=new int[n];
    }
}
