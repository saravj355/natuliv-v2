package dao;

import controller.Auth;
import model.User;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import utils.PasswordHash;

/**
 *
 * @author sarav
 */
public class UserDaoTest {

    public UserDaoTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void testLoginUser() {
        System.out.println("Login test");
        User user = Auth.login("saravj971@gmail.com", "1234");
        
        System.out.println("Correo:" + user.getEmail());
        System.out.println("Contraseña:" + user.getPasswordHash());

        assertEquals(user, user);
    }

    @Test
    public void testUpdateUser() {
        System.out.println("update");
        User user = new User();

        String passHash = PasswordHash.compute("1234");

        user.setId(1);
        user.setName("Sara");
        user.setLastName("Valle");
        user.setEmail("saravj971@gmail.com");
        user.setPasswordHash(passHash);
        user.setGender("Femenino");
        user.setUserRoleId(2);

        UserDao instance = new UserDao();
        boolean expResult = true;
        boolean result = instance.update(user);
        
        System.out.println("Nombre:" + user.getName());
        System.out.println("Apellido:" + user.getLastName());
        System.out.println("Correo:" + user.getEmail());
        System.out.println("Contraseña:" + user.getPasswordHash());
        System.out.println("Género:" + user.getGender());
        System.out.println("Rol usuario:" + user.getUserRoleId());
        
        assertEquals(expResult, result);
    }

    @Test
    public void testInsertUser() {
        System.out.println("testInsertUser");
        User user = new User();

        String passHash = PasswordHash.compute("1234");
        user.setId(1);
        user.setName("Sara");
        user.setLastName("Valle");
        user.setEmail("svj971@gmail.com");
        user.setPasswordHash(passHash);
        user.setGender("Femenino");
        user.setUserRoleId(2);

        UserDao instance = new UserDao();
        boolean expResult = true;
        boolean result = instance.insert(user);
        
        System.out.println("Nombre:" + user.getName());
        System.out.println("Apellido:" + user.getLastName());
        System.out.println("Correo:" + user.getEmail());
        System.out.println("Contraseña:" + user.getPasswordHash());
        System.out.println("Género:" + user.getGender());
        System.out.println("Rol usuario:" + user.getUserRoleId());
        
        assertEquals(expResult, result);
    }

}
