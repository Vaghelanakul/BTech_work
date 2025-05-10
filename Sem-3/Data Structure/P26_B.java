import java.util.*;

class P26_B
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("enter first array size:");
        int n = sc.nextInt();
        int[] arr1 = new int [n];
        for(int i=0 ; i<arr1.length ;i++)
        {
            arr1[i] = sc.nextInt();
        }

        System.out.print("enter seconde array size:");
        int n1 = sc.nextInt();
        int[] arr2 = new int [n1];
        for(int i=0 ; i<arr2.length ;i++)
        {
            arr2[i] = sc.nextInt();
        }

        int arr3[] = new int [n+n1];

        for(int i=0 ; i<arr1.length ;i++)
        {
            arr3[i] = arr1[i];
        }
        for(int i=0 ; i<arr2.length ;i++)
        {
            arr3[i+n] = arr2[i];
        }
        System.out.println("merge array is:");
        for(int i=0 ; i<arr3.length ;i++)
        {
            System.out.println(arr3[i]);
        }
    }
}