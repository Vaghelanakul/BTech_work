class NewThread extends Thread{
    NewThread(){
        super("demo thread");
        System.out.println("child thread:"+this);
        start();
    }
    public void run(){
        try{
            for(int i=5;i>0;i--){
                System.out.println("child thread"+i);
                Thread.sleep(500);
            }
        }
        catch(Exception e){
            System.out.println("child interrupted ");
        }
        System.out.println("exiting child thread ");
    }
}

public class thread1 {
    public static void main(String[] args) {
        new NewThread();
        try{
            for(int i=5;i>0;i--){
                System.out.println("main thread:"+i);
                Thread.sleep(1000);
            }
        }
        catch(Exception e){
            System.out.println("main thread interrupted");
        }
        System.out.println("exiting main thread ");
    }
    
}
