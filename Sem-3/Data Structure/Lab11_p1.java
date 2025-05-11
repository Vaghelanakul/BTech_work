
import java.util.Scanner;

//lab 11 a60
class Node {

    int info;
    Node link;

    public Node(int data) {
        this.info = data;
        this.link = null;
    }

}

public class Lab11_p1 {

    public Node top = null;

    public void pushNode(int data) {
        Node newNode = new Node(data);
        newNode.link = top;
        top = newNode;
    }

    public void popNode() {
      
        
        System.out.println("poped data is:" + top.info);
        top = top.link;
    }

    public void display() {
        Node save = top;
        while (save != null) {
            System.out.println(save.info);
            save = save.link;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Lab11_p1 o1 = new Lab11_p1();
       
        while (true) {
            System.out.println("enter your choice \n 1st for push \n 2nd fro pop and \n 3rd for dispaly \n 4 for exit");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.println("enter data");
                    int data = sc.nextInt();
                    o1.pushNode(data);
                    break;
                case 2:
                    o1.popNode();
                    break;
                case 3:
                    System.out.println("list is:");
                    o1.display();
                    break;
                    case 4:
                        System.exit(c);
            }
        }

    }

}
