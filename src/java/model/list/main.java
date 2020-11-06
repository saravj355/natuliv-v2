package model.list;

import controller.list.List;
import model.User;

public class main {

    public static void main(String[] args) {
        List list = new List();
        User user = new User();
        user.getLastName();
        user.getEmail();
        
        list.addData(user);

    }

}
