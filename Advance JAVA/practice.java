import java.util.*;
// class MyThread extends Thread{
//     public void run(){
//         try{
//             while (true) {
//                 System.out.println("thread 1 is running");
//                 Thread.sleep(500);
//             }
//         }
//         catch(Exception e){
//             System.out.println("thread 1 is interrupted");
//         }
        
//     }
// }

// class MyThread2 extends Thread{
//     public void run(){
//         try{
//             while (true) {
//                 System.out.println("thread 2 is running");
//                 Thread.sleep(500);
//             }
//         }
//         catch(Exception e){
//             System.out.println("thread 2 is interrupted");
//         }
        
//     }
// }

// public class practice {
//     public static void main(String[] args) {
//         System.out.println("hello");
//         MyThread t1=new MyThread();
//         MyThread2 t2=new MyThread2();
//         t1.start();
//         t2.start();
//     }
// }


// class MyThread extends Thread {
//     public void run() {
//         for(int i =0;i<5;i++){
//             System.out.println("thread 1 is running");
//             try{
//                 Thread.sleep(1000);
//             }
//             catch(Exception e){
//                 System.out.println("thread 1 is interrrupt");
//             }
//         }
//     }
// }

// class MyThread2 extends Thread {
//     public void run() {
//         for(int i =0;i<5;i++) {
//             System.out.println("thread 2 is running");
//             try{
//                 Thread.sleep(500);
//             }
//             catch(Exception e){
//                 System.out.println("thread 2 is interrupted");
//             }
//         }
//     }
// }

// public class practice {
//     public static void main(String[] args) {
//         System.out.println("hello");
//         MyThread t1 = new MyThread();
//         MyThread2 t2 = new MyThread2();
//         t1.start();
//         t2.start();
//     }
// }



class Thread1 extends Thread{
	public void run(){
		try{
			for(int i=0;i<5;i++){
				System.out.print("thread 1  is running; ");
				Thread.sleep(1000);
			}
		}
		catch(Exception e){
			System.out.print("thread 1 is interrupted");
		}
	}
}
class Thread2 extends Thread{
    public void run(){
		try{
			for(int i=0;i<5;i++){
				System.out.print("thread 1  is running; ");
				Thread.sleep(1000);
			}
		}
		catch(Exception e){
			System.out.print("thread 1 is interrupted");
		}
	}

}

class Main{
	public static void main(String[] args){
		Thread1 t1= new Thread1();
		Thread2 t2= new Thread2();
		t1.start();
		t2.start();
	}
}