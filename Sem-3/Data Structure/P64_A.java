import java.util.Scanner;

class Node{
    int info;
    Node link;
    public Node(int data){
        this.info = data;
        this.link=null;
    }
}
public class P64_A {
    Node first=null;
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
    

    Node reverse(Node node){
        Node pred=null;
        Node current=node;
        Node save=null;
        while(current!=null){
            save=current.link;
            current.link=pred;
            pred=current;
            current=save;
        }
        node=pred;

        return node;
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
        P64_A obj=new P64_A();
        System.out.println("enter size of link list");
        int n=sc.nextInt();
        System.out.println("enter"+n+"element");
        for(int i=0;i<n;i++){
            int data=sc.nextInt();
            obj.insertEnd(data);
        }
        System.out.println("original list is:");
        obj.display();
        System.out.println("reverse of link list is:");
        obj.first= obj.reverse(obj.first);
        obj.display();
        
        
    }    
}
