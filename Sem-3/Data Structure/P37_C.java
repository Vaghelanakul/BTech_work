import java.util.*;

public class P37_C {
    static class BankAccount {
        int accno;
        int balance;
        String accholdername;

        void deposite(int money) {
            balance += money;
            System.out.println("current balance:" + balance);
        }

        void withdraw(int money) {
            balance -= money;
            System.out.println("current balance:" + balance);
        }

        void check() {
            System.out.println("current balance:" + balance);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        BankAccount acc = new BankAccount();

        System.out.print("Enter Account Holder Name:");
        acc.accholdername = sc.nextLine();

        System.out.print("Enter Account Number:");
        acc.accno = sc.nextInt();

        System.out.print("Enter Balance:");
        acc.balance = sc.nextInt();

        while (true) {
            System.out.println("Press 1 for Deposit");
            System.out.println("Press 2 for Withdraw");
            System.out.println("Press 3 for Check Balance");
            System.out.println("Press 4 for Exit");

            int num = sc.nextInt();

            switch (num) {
                case 1:
                    System.out.print("which money you have to deposite:");
                    int deposite = sc.nextInt();
                    acc.deposite(deposite);
                    break;

                case 2:
                    System.out.print("Mon:");
                    int withdraw = sc.nextInt();
                    acc.withdraw(withdraw);
                    break;

                case 3:
                    acc.check();
                    break;
                default:
                    System.out.println("Invalid Number");
                    break;
            }
        }
    }

}
