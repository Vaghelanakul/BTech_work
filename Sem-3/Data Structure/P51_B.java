import java.util.Scanner;

class CircularQueue {
    public int[] queue;
    public int front = -1, rear = -1, n;

    public void cEnqueue(int y) {
        if (rear == n - 1) {
            rear = 0;
        }
        else{
            rear++;    
        }
        if (front == rear) {
            System.out.println("overflow...");
            return;
        }
        queue[rear] = y;
        if (front == -1) {
            front = 0;
        }
            return;
    }

    public void cDequeue() {
        if (front == -1) {
            System.out.println("underflow");
            return;
        }
        System.out.println("dequeue element is:" + queue[front]);
        if (front == rear) {
            front = -1;
            rear = -1;
        }
        if (front == n) {
            front = 0;
        } else
            front++;
    }

    public void display() {
        if (front == -1) {
            System.out.println("queue is empty");
        }
        System.out.println("queue is:");    
        int i=front;
        while (true) {
            System.out.println(queue[i]);
            if(i==rear)
                break;
            i=(i+1)%n;
        }
        System.out.println();
        

    }

}

public class P51_B {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        CircularQueue o1 = new CircularQueue();
        System.out.println("enter size of queue");
        o1.n = sc.nextInt();
        o1.queue = new int[o1.n];
        while (true) {
            System.out.println("enter your choise\n 1 for enqueue \n 2 for dequeue \n 3 for display \n and 4 for exit");
            int c = sc.nextInt();
            switch (c) {
                case 1:
                    System.out.println("enter value");
                    int x = sc.nextInt();
                    o1.cEnqueue(x);
                    break;
                case 2:
                    o1.cDequeue();
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
