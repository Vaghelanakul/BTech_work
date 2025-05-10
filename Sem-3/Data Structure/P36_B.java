import java.util.*;

class P36_B
{
    static void celsiusToFahrenheit(double  c)
    {
        double fahrenheit=(c*(9/5)+32) ;
        System.out.println(c +"celsius in Fahrenheit ="+fahrenheit);
    }
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("celsius = ");
        double celsius = sc.nextDouble();

        celsiusToFahrenheit(celsius);
    }

    
}