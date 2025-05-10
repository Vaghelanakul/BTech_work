import java.util.*;

class P34_A
{
    static class Employee_Detail
    {
        int Employee_ID;
        String Name;
        String Designation;
        double Salary;

        void getDetail()
        {
            Scanner sc = new Scanner(System.in);
            System.out.print("Employee id = ");
            this.Employee_ID = sc.nextInt();

            System.out.print("Employee Name = ");
            this.Name = sc.next();

            System.out.print("Employee Designation = ");
            this.Designation = sc.next();

            System.out.print("Employee Salary = ");
            this.Salary = sc.nextDouble();
        }

        void printDetail()
        {
            System.out.println("");
            System.out.println("Employee detail");
            System.out.println("Employee id = "+Employee_ID);
            System.out.println("Employee Name = "+Name);
            System.out.println("Employee Designation = "+Designation);
            System.out.println("Employee Salary = "+Salary);
        }
    }
    public static void main(String[] args)
    {
        Employee_Detail employee = new Employee_Detail();
        employee.getDetail();
        employee.printDetail();
    }
}