// class thread implements Runnable{
//     public void run(){
//         try{
//             for(int i=0;i<=5;i++){
//                 System.out.println("thread is running :"+i);
//                 Thread.sleep(500);
//             }
//         }
//         catch(Exception e){
//             System.out.println("thread is interrupted");
//         }

//     }
// }

// class threadConstruction implements Runnable {
//     Thread t1;

//     public threadConstruction() {
//         t1 = new Thread(this, "thread1");
//         System.out.println("child thread started:");
//         t1.start();
//     }

//     public void run() {
//         System.out.println("child thread runnable");
//         try{
//             for(int i=0;i<=5;i++){
//                 System.out.println("child thread:"+i);
//                 Thread.sleep(1000);
//             }
//         }
//         catch(Exception e){
//             System.out.println("inside exp: "+e.toString());
//         }

//     }
// }

// class a{
//     a(){
//         System.out.println("class a constructor is called");
//     }
//     int val=10;
//     public void displayA(){
//         System.out.println("value of a is :"+val);
//         System.out.println("display method of a class");
//     }
// }
// class b extends a{
//     b(){
//         super();
//         System.out.println("class b constructor is called");
//     }
//     int val=20;
//     public void displayB(){
//         System.out.println("value of b is :"+val);
//         System.out.println("value of b is :"+super.val);

//         System.out.println("display method of b class");
//         }
// }

// Parent Class
class Animal {
    // Overridden Method
    void sound() {
        System.out.println("Animals make sound");
    }
}

// Child Class 1
class Dog extends Animal {
    // Overriding Method
    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

// Child Class 2
class Cat extends Animal {
    // Overriding Method
    @Override
    void sound() {
        System.out.println("Cat meows");
    }
}



public class thread2 {
    public static void main(String[] args) {

        Animal myAnimal = new Dog();
        myAnimal.sound(); // Calls Dog's sound method

        // Parent class reference pointing to a Cat object
        myAnimal = new Cat();
        myAnimal.sound();
        // b b1=new b();
        // b1.displayA();
        // b1.displayB();
    //    new threadConstruction();
    //    try{
    //     System.out.println("parent thread initialized");
    //     for(int i=0;i<5;i++){
    //         System.out.println("parent thread "+i);
    //         Thread.sleep(500);
    //     }

    //    }
    //    catch(Exception e){
    //     System.out.println("inside exp: "+e.toString());
    //    }
    }

}
