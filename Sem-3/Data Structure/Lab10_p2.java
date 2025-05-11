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
    }
}
