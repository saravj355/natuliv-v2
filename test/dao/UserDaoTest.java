package dao;

import controller.UserController;
import model.User;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

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
        User user = UserController.login("sofiam123@gmail.com", "1234");

        System.out.println("Correo:" + user.getEmail());
        System.out.println("Contraseña:" + user.getPasswordHash());

        assertEquals(user, user);
    }

    @Test
    public void testDeleteUser() {
        System.out.println("Login test");
        boolean result = UserController.deleteUserById(21);

        assertEquals(true, result);
    }

    @Test
    public void testUpdateUser() {
        System.out.println("testUpdateUser");
        User user = new User();

        user.setId(21);
        user.setFirstName("Sofia");
        user.setLastName("Torres");
        user.setEmail("sofiam123@gmail.com");
        user.setGender("Femenino");

        UserController instance = new UserController();
        boolean expResult = true;
        boolean result = instance.updateUser(user);

        System.out.println("Nombre:" + user.getFirstName());
        System.out.println("Apellido:" + user.getLastName());
        System.out.println("Correo:" + user.getEmail());

        assertEquals(expResult, result);
    }

    @Test
    public void testInsertUser() {
        System.out.println("testInsertUser");

        User user = new User();
        user.setFirstName("Sofia");
        user.setLastName("Muñoz");
        user.setEmail("sofia@support.com");
        user.setGender("Femenino");
        user.setPassword("1234");

        User newUser = UserController.createUser(user, "SUPPORT");

        System.out.println("Nombre:" + newUser.getFirstName());
        System.out.println("Apellido:" + newUser.getLastName());
        System.out.println("Correo:" + newUser.getEmail());
        System.out.println("Contraseña:" + newUser.getPasswordHash());
        System.out.println("Género:" + newUser.getGender());
        System.out.println("Rol usuario:" + newUser.getUserRoleId());

        assertEquals(newUser, newUser);
    }

}
