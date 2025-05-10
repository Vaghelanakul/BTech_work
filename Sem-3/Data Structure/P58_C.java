import java.util.*;

class Node {
    int info;
    Node link;

    public Node(int data) {
        this.info = data;
        this.link = null;
    }
}

public class P58_C {
    Node first, last;

    public void insertAtFirst(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            newNode.link = newNode;
            first = newNode;
            last = newNode;
            return;
        } else {
            newNode.link = first;
            last.link = newNode;
            first = newNode;
        }
    }

    public int countNode() {

        if (first == null) {
            return 0;
        }
        int count = 1;
        Node save = first.link;
        while (save != first) {
            save = save.link;
            count++;

        }
        return count;
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        P58_C obj1 = new P58_C();
        while (true) {
            System.out.println("1. Insert at first\n2. Count of nodes\n3. Exit");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.print("Enter data: ");
                    int data = sc.nextInt();
                    obj1.insertAtFirst(data);
                    break;
                case 2:
                    int count = obj1.countNode();
                    System.out.println("Count of nodes: " + count);
                    break;
                case 3:
                    System.out.println("Exiting...");
                    System.exit(c);
                    break;
            }
        }
    }

}
