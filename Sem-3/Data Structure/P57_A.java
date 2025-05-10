import java.util.Scanner;

public class P57_A {
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

    public void insertEnd(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            first = newNode;
            return;
        }
        Node save = first;
        while (save.link != null) {
            save = save.link;
        }
        save.link = newNode;
    }

    public void deleteFirstNode() {
        if (first == null) {
            System.out.println("list is empty");
        } else {
            System.out.println("deleted first node data is:" + first.info);
            first = first.link;

        }
    }

    public void deleteLastNode() {
        Node save = first;
        if (first == null) {
            System.out.println("list is empty");
        } else if (first.link == null) {
            System.out.println("deleted last node data is:" + save.link.info);
            first = null;
        } else {    
            while (save.link.link != null) {
                save = save.link;
            }
            System.out.println("last node data is:" + save.info);
            save.link = null;

        }
    }

    public void deleteNode(int key) {
        if (first == null) {
            System.out.println("list is empty");
            return;
        }
        Node save = first, pred = null;
        if (save.info == key) {
            first = save.link;
            return;
        }
        while (save != null && save.info != key) {
            pred = save;
            save = save.link;
        }
        if (save == null) {
            System.out.println("node not found");
            return;
        }
        pred.link = save.link;
    }

    public void display() {
        Node save = first;
        while (save != null) {
            System.out.println(save.info);
            save = save.link;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        P57_A obj1 = new P57_A();
        while (true) {
            System.out.println(
                    "1.Insert at first\n2.dispaly all node\n3.delete first node\n4.insert at end\n5. delete last node \n6.delete from specific position\n7.exit ");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.println("Enter data");
                    int data = sc.nextInt();
                    obj1.insertAtFirst(data);
                    break;
                case 2:
                    System.out.println("entered nodes data is");
                    obj1.display();
                    break;
                case 3:
                    obj1.deleteFirstNode();
                    break;
                case 4:
                    System.out.println("Enter data");
                    data = sc.nextInt();
                    obj1.insertEnd(data);
                    break;
                case 5:
                    obj1.deleteLastNode();
                    break;
                case 6:
                    System.out.println("enter key for specific deletion:");
                    int key = sc.nextInt();
                    obj1.deleteNode(key);
                    break;
                case 7:
                    System.exit(c);
            }
        }
    }
}
