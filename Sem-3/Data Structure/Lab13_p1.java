import java.util.*;

class Node {
    int info;
    Node link;

    public Node(int data) {
        this.info = data;
        this.link = null;
    }
}

public class Lab13_p1 {
    Node first = null, last;

    public void cirInsAtFirst(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            newNode.link = newNode;
            first = newNode;
            last = newNode;
            return;
        }
        newNode.link = first;
        last = newNode;
        first = newNode;

    }

    public void cirInsAtEnd(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            newNode.link = newNode;
            first = newNode;
            last = newNode;
            return;
        }
        last = newNode;
        newNode.link = first;
        last = newNode;

    }

    public void deleteNode(int key) {
        if (first == null) {
            System.out.println("linklist is empty");
            return;
        }
        Node save = first, pred;

        while (save.info != key && save != last) {
            pred = save;
            save = save.link;
        }
        if (save.info != key) {
            System.out.println("node not found");
            return;
        }
        pred = save.link;

    }

    public void display() {
        Node save = first;

        while (save != last.link) {
            System.out.println(save.info);
            save = save.link;
        }
    }

    public static void main(String[] args) {
        Lab13_p1 obj1 = new Lab13_p1();
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.println(
                    "choose 1 for insertAtFirst\n choose 2 for insertAtLast\n choose 3 for delete a node\n choose 4 for display ");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    int data = sc.nextInt();
                    obj1.cirInsAtFirst(data);
                    break;
                case 2:
                    data = sc.nextInt();
                    obj1.cirInsAtEnd(data);
                    break;
                case 3:
                    int key = sc.nextInt();
                    obj1.deleteNode(key);
                    break;
                case 4:
                    obj1.display();

                default:
                    break;
            }
        }

    }

}
