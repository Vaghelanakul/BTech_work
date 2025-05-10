import java.util.*;
import java.util.LinkedList;
import java.util.Queue;

class Graph{
    int numVerties;
    LinkedList<Integer>[] adjList;
    boolean[] visited;
    public Graph(int numVerties){
        this.numVerties=numVerties;
        adjList=new LinkedList[numVerties];
        visited=new boolean[numVerties];
        for(int i=0;i<numVerties;i++){
            adjList[i]=new LinkedList<>();
        }
    }
    public void addEdge(int src,int dest){
        adjList[src].add(dest);
        adjList[dest].add(src);
    }
    public void dfs(int vertex){
        visited[vertex]=true;
        System.out.println(vertex+" ");

        for(int adj : adjList[vertex]){
            if(!visited[adj]){
                dfs(adj);
            }
        }

    }
    void bfs(int s){
        boolean visited[]= new boolean[numVerties];
        Queue<Integer> queue=new LinkedList<>();
        visited[s]=true;
        queue.add(s);
        while(!queue.isEmpty()){
            s=queue.poll();
            System.out.println(s);
            for(int i:adjList[s]){
                if(!visited[i]){
                    visited[i]=true;
                    queue.add(i);
                }
            }
        }
    }
}
public class P85_A {
    public static void main(String[] args) {
        Graph g=new Graph(4);
        g.addEdge(0, 1);
        g.addEdge(1, 2);
        g.addEdge(2, 3);
        g.addEdge(3, 0);

        System.out.println("dfs is:");
        g.dfs(0);
        System.out.println("bfs is :");
        g.bfs(0);


        
    }
    
}
