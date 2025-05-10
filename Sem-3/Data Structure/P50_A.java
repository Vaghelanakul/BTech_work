import java.util.Scanner;

class Queue {
    public int[] queue;
    public int front, rear;

    public Queue(int size) {
        queue = new int[size];
        this.front = -1;
        this.rear = -1;
    }

    public void enqueue(int x){
        if(rear>=queue.length-1){
            System.out.println("Queue is full");
        }
        else{
            rear++;
            queue[rear] = x;
        }
        if(front==-1){
            front=0;
        }
    }
    public void dequeue(){
        if(front==-1){
            System.out.println("Queue is empty");
        }
        int d=queue[front];
        System.out.println("remove element is:"+d);
        if(front==rear){
            front=-1;
            rear=-1;
        }
        else{
            front++;
        }
    }
    public void display(){
        int i=front;
        while(i<=rear){
            System.out.println(queue[i]);
        }
    }
}

public class P50_A {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter size of queue");
        int n = sc.nextInt();
        Queue o1 = new Queue(n);
        while (true) {
            System.out.println("enter your choise\n 1 for enqueue \n 2 for dequeue \n 3 for display \n and 4 for exit");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.println("enter value");
                    int x = sc.nextInt();
                    o1.enqueue(x);
                    break;
                case 2:
                    o1.dequeue();
                    break;
                case 3:
                    o1.display();
                    break;
                case 4:
                    System.exit(c);

            }

        }

    }
}
