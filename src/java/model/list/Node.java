package model.list;

public class Node {
    private Object data;
    private Node node;
    
    public Node(){
        data = null;
        Node node = null;
    }
    
    public Node(Object data){
        this();
        this.data = data;  
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Node getNode() {
        return node;
    }

    public void setNode(Node node) {
        this.node = node;
    }
    
}
