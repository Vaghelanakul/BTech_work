
//lab 10 a56
import java.util.*;

public class P56_A {
    class Node {
        int info;
        Node link;

        public Node(int data) {
            this.info = data;
            this.link = null;
        }
    }

    public Node first = null;

    public void insertAtFirst(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            first = newNode;
            return;
        }
        Node save = first;
        first = newNode;
        first.link = save;

    }

    public void printList() {
        Node save = first;
        while (save != null) {
            System.out.println(save.info);
            save = save.link;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        P56_A obj1 = new P56_A();
        while (true) {
            System.out.println("1.Insert at first\n2.Print List\n3.Exit");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.println("Enter data");
                    int data = sc.nextInt();
                    obj1.insertAtFirst(data);
                    break;
                case 2:
                    System.out.println("entered nodes data is");
                    obj1.printList();
                case 3:
                    System.exit(c);
            }
        }
    }
}