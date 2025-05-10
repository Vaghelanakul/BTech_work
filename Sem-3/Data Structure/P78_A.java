// Write a menu driven program to implement Binary Search Tree (BST) & perform 
// following operations 
//  Preorder Traversal, Postorder Traversal, Inorder Traversal 

public class P78_A {
    static class Node {
        int data;
        Node left, right;

        public Node(int key) {
            this.data = key;
            left = right = null;
        }
    }

    static Node root;

    public void insert(Node root, int key) {
        if (root == null)
            root = new Node(key);
        if (key < root.data) {
            if (root.left == null)
                root.left = new Node(key);
            else
                insert(root.left, key);
        }
        if (key > root.data) {
            if (root.right == null)
                root.right = new Node(key);
            else
                insert(root.right, key);
        }
    }
    public void search(Node root,int key){
        if(root==null){
            System.out.println("node not found");
            return;
        }
        else{
            if(root.data==key){
                System.out.println("node found");
                return;
            }
            else if(key<root.data){
                search(root.left,key);
            }
            else{
                search(root.right,key);
                
            }
        }
    }
    void inorder(Node root){
        if(root!=null){
            inorder(root.left);
            System.out.println(root.data);
            inorder(root.right);
            
        }
    }
    void preorder(Node root){
        if(root!=null){
            System.out.println(root.data);
            preorder(root.left);
            preorder(root.right);
            
        }
    }
    void postorder(Node root){
        if(root!=null){
            postorder(root.left);
            postorder(root.right);
            System.out.println(root.data);


        }
    }
    public Node  delete(Node root,int key){
        if(root==null){
            System.out.println("node not found");
        }
        if(root.data>key){
            root.left= delete(root.left,key);
        }
        else if(root.data<key){
            root.right=delete(root.right,key);
        }
        else{
            if(root.left==null){
                return root.right;
            }
            else if(root.right==null){
                return root.left;
            }
            Node =getSuccessor;
            root.data=succ.data;
            r.right=delete(r, key);
        }
        return root;
    }

}
