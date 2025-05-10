import java.util.LinkedList;
import java.util.Scanner;

public class P63_A {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        LinkedList<Integer> originalList = new LinkedList<>();

        System.out.println("Enter the length of the list:");
        int n = sc.nextInt();

        System.out.println("Enter " + n + " elements in the list:");
        for (int i = 0; i < n; i++) {  
            int element = sc.nextInt();
            originalList.add(element);
        }

        System.out.println("Original list: " + originalList);

        System.out.println("Cloned list:");
        //@SuppressWarnings("unchecked")
        LinkedList<Integer> copiedList = (LinkedList<Integer>) originalList.clone();   
        System.out.println(copiedList);

        
    }
}
