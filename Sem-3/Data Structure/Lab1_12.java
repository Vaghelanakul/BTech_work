//lab 1 c12

public class Lab1_12 {
    public static void main(String[] args) {
        System.out.println("armstrong number between 1 to 1000:");
        for (int i = 1; i < 1000; i++) {
            int num = i;
            int sum = 0;
            int count = 0;
            int temp = num;
            while (num > 0) {
                num = num / 10;
                count++;

            }
            while (temp != 0) {
                int rem = temp % 10;
                int p = 1;
                for (int j = 0; j < count; j++) {
                    p = p * rem;
                }
                sum += p;
                temp = temp / 10;
            }
            if(i==sum){
                System.out.println(i);
            }

        }

    }
}
