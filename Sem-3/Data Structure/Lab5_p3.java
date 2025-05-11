//lab 5 b32
import java.util.*;

public class Lab5_p3 {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("enter size of array");
        int n=sc.nextInt();
        String[] words=new String[n];
        System.out.println("enter"+n+" words in array");
        for(int i=0;i<n;i++){
            words[i]=sc.next();
        }
        int index=(int)(Math.random()*n);
        String selectedword=words[index];
        System.out.println("random word is:"+words[index]);
        System.out.println("enter anagram word:");
        String anagramword=sc.next();
        char[] word1=selectedword.toCharArray();
        char[] word2=anagramword.toCharArray();
        Arrays.sort(word1);
        Arrays.sort(word2);
        if(Arrays.equals(word1, word2)){
            System.out.println("correct");
        }
        else{
            System.out.println("incorrect");
        }
    }
}
