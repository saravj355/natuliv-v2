package controller.list;

import model.User;
import model.Node;

public class LinkedList {

    private Node head;
    private int length;

    public LinkedList() {
        this.length = 0;
        this.head = new Node();
    }

    public int getLength() {
        return this.length;
    }

    public boolean add(User user) {
        Node lastNode = getLastNode();

        if (user != null && lastNode != null) {
            lastNode.setNode(new Node(user));
            this.length++;
            return true;
        }
        return false;
    }

    private Node getLastNode() {
        Node lastNode = null;
        if (this.head != null) {
            lastNode = this.head;
            while (lastNode.getNode() != null) {
                lastNode = lastNode.getNode();
            }
        }
        return lastNode;
    }

    public Object getData(int index) {
        Node lastNode = null;
        int i = 0;
        Object data = null;

        if (head != null) {
            lastNode = head;
            do {
                lastNode = lastNode.getNode();
                if (i == index) {
                    data = lastNode.getData();
                    break;
                }
                i++;
            } while (lastNode.getNode() != null);
        }
        return data;
    }
}
