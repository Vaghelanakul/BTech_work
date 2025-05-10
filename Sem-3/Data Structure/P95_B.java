import java.util.*;
public class P95_B {
    static int getMax(int arr[],int n){
        int max = arr[0];
        for(int i=1;i<arr.length;i++){
            if(arr[i]==max){
                max=arr[i];
            }
        }
        return max;
    }
    static void countSort(int arr[],int n,int place){
        int[] output=new int[n];
        int i;
        int count[] =new int[10 ];
        for(i=0;i<n;i++)
            count[i]=0;
        for(i=0;i<n;i++)
            count[(arr[i]/place)%10]++;
        for(i=1;i<10;i++)
            count[i]+=count[i-1];
        for(i=n-1;i>=0;i--){
            output[count[(arr[i]/place)%10]-1]=arr[i];
            count[(arr[i]/place)%10]--;
        }
        for(i=0;i<n;i++){
            arr[i]=output[i];
        }
    }
    static void radixSort(int arr[],int n){
        int max = getMax(arr, n);
        for(int place=1;max/place>0;place*=10){
            countSort(arr,n,place);
        }
        
    }
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("enter size of an array");
        int n = sc.nextInt();
        int[] a = new int[n];
        System.out.println("enter "+n+" element");
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
            }
        System.out.println("sorted arrary is");
        radixSort(a, n);
        System.out.println("Sorted array is:");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " ");
        }
    }
}
