import java.util.Scanner;

public class Lab10_p2 {
    class Node {
        int info;
        Node link;

        public Node(int data) {
            this.info = data;
            this.link = null;
        }
    }
    public Node first=null;
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
    public void insertEnd(int data){
        Node newNode = new Node(data);
        if(first==null){
            first=newNode;
            return;
        }
            Node save=first;
            while(save.link!=null){
                save=save.link;
            }
        save.link=newNode;
    }
    public void deleteNode(int key){
        if(first==null){
            System.out.println("list is empty");
            return;
        }
        Node save=first,pred=null;
        if(save.info==key){
            first=save.link;
            return;
        }
        while(save!=null && save.info!=key){
            pred=save;
            save=save.link;
        }
        if(save==null){
            System.out.println("node not found");
            return;
        }
        pred.link=save.link;
    }
    public void display() {
        Node save = first;
        while (save != null) {
            System.out.println(save.info);
            save = save.link;
        }
    }
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        Lab10_p2 obj1=new Lab10_p2();
        while (true) {
            System.out.println("1.Insert at first\n2.\n3.Exit");
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
                case 3:
                    System.exit(c);
            }
        }
    }
}
