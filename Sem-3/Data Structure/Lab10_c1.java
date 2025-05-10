import java.util.*;

class Node {
    int info;
    Node link;

    public Node(int data) {
        this.info = data;
        this.link = null;
    }
}

public class Lab10_c1 {
    Node first = null;

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

    public void countNode() {
        int count=0;
        if(first==null){
            System.out.println("count is:"+count);
            return;
        }

        Node save = first;
        while (save != null) {
            count++;
            save = save.link;
        }
        System.out.println("number of node is:" + count);

    }

    public static void main(String[] args) {
        Lab10_c1 obj = new Lab10_c1();
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.println("1.Insert at end\n 2 display count\n 3 for exit");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    int data = sc.nextInt();
                    obj.insertEnd(data);
                    break;
                case 2:
                    obj.countNode();
                    break;
                case 3:
                    System.exit(c);
            }

        }
    }

}
