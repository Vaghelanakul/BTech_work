//lab 5 a31
import java.util.*;
public class P31_A {
    public void result(int base,int power){
        for(int i=1;i<=power;i++){
            base=base*base;
            
        }
        System.out.println("total is "+base);
    }
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter base");
        int base=sc.nextInt();
        System.out.println("enter power");
        int power=sc.nextInt();
        P31_A p31=new P31_A();
        p31.result(base,power);


        // int n=sc.nextInt();
        // int[] arr=new int[n];
        // for(int i=0;i<n;i++){
        //     arr[i]=sc.nextInt();
        // }
        // System.out.println("enter the element you want to search:");
        // int x=sc.nextInt();
        // int low=0;
        // int high=n-1;
        // boolean flag= true;
        // while(low<=high){
        //     int mid=(low+high)/2;
        //     if(arr[mid]>x){
        //         high=mid-1;
        //     }
        //     else if(arr[mid]==x){
        //             System.out.println("element found at index "+mid);
        //             flag=true;
        //             break;
        //         }
        //     else if(arr[mid]<x){
        //         low=mid+1;
        //     }
        //     else{
        //         System.out.println("element not found");
        //     }
        // }
        // if(flag==false){
        //     System.out.println("element not found");
        // }

        // int n=sc.nextInt();
        // int[] myArray = new int[n];
        // for(int i=0;i<n;i++){
        //     myArray[i]=sc.nextInt();
        // }
        // System.out.println("Enter number to search:");
        // int searchNumber = sc.nextInt();
        // sc.close();
        
        // int low = 0;
        // int high = n-1;
        // boolean isFound = false;
        
        // while (low<=high) {
        //     int mid = (high + low) / 2;
        //     if (searchNumber < myArray[mid]) {
        //         high = mid - 1;
        //     } else if (searchNumber == myArray[mid]) {
        //         System.out.println("Found at = " + mid);
        //         isFound = true;
        //         break;
        //     } else {
        //         low = mid + 1;
        //     }
        // }
        
        // if (!isFound) {
        //     System.out.println("Number does not exist in array");
        // }
    

        
        






        // int mat1[][] = new int[3][2];
        // int mat2[][] = new int[2][3];
        // int mat3[][] = new int[3][3];
        // System.out.println("enter 1st 3x2 matrix value here");
        // for (int i = 0; i < 3; i++) {
        //     for (int j = 0; j < 2; j++) {
        //         mat1[i][j] = sc.nextInt();
        //     }
        // }
        // System.out.println("enter 2nd 2x3 matrix value here");
        // for (int i = 0; i < 2; i++) {
        //     for (int j = 0; j < 3; j++) {
        //         mat2[i][j] = sc.nextInt();
        //     }
        // }
        // for(int i=0;i<3;i++){
        //     for(int j=0;j<3;j++){
        //         for(int k=0;k<2;k++){
        //             mat3[i][j]+=mat1[i][k]*mat2[k][j];
        //         }
        //     }
        // }
        // System.out.println("multiplication of 2 matrix is:");
        // for (int i = 0; i < 3; i++) {
        //     for (int j = 0; j <3; j++) {
        //         System.out.println(mat3[i][j]);
        //     }
        // }
    }
}
