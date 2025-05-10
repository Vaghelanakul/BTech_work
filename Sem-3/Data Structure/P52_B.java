import java.util.*;

class DoubleEndedQueue {
    public int[] queue;
    public int front, rear, n;
    public DoubleEndedQueue(int n){
        this.n=n;
        queue = new int[n];
        front=-1;
        rear=0;
    }

    public void dqInsert_Front(int x) {
        if (front == 0) {
            System.out.println("queue is overflow");
            return;
        }
        if (front == -1) {
            front = 0;
            rear = 0;
        }
        front--;
        queue[front] = x;
    }
    public void dqDelete_Rear(){
        if(rear==-1){
            System.out.println("underflow");
            return;
        }
        int y=queue[rear];
        System.out.println("deleted element is:"+y);
        if(rear==front){
            front=-1;
            rear=-1;
        }
        else{
            rear--;
        }
    }
}

public class P52_B {
    public static void main(String[] args) {
        
    }

}
