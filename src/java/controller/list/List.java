package controller.list;

import model.list.Node;

public class List {

    private Node head;
    private int length;

    public List() {
        length = 0;
        head = new Node();
    }

    public int getLength() {
        return length;
    }

    public boolean addData(Object data) {
        Node lastNode = getLastNode();

        if (data != null && lastNode != null) {
            lastNode.setNode(new Node(data));
            length++;
            return true;
        }
        return false;
    }

    private Node getLastNode() {
        Node lastNode = null;
        if (head != null) {
            lastNode = head;
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
