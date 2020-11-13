/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

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
    public void testInsert() {
    
    }
    
    @Test
    public void testLogin() { 
//        User userIntace = new User();        
//        User user = Auth.login("sara12@mail.com", "1234");         
//        assertEquals(userIntace, user);
               
    }
    
    @Test
    public void testUpdate() {
//        System.out.println("update");
//        User user = new User(); 
//        
//        String passHash = PasswordHash.compute("1234");
//        
//        user.setId(7);
//        user.setName("Sara");
//        user.setLastName("Valle");
//        user.setEmail("sara12@mail.com");
//        user.setPasswordHash(passHash);
//        user.setUserRoleId(2);
//        
//        UserDao instance = new UserDao();
//        boolean expResult = true;
//        boolean result = instance.update(user);
//        assertEquals(expResult, result);
    }
    @Test
    public void testInsertUser() {        
        System.out.println("testInsertUser");
        User user = new User(); 
        
        String passHash = PasswordHash.compute("diana12");
        
        user.setId(3);
        user.setName("Diana");
        user.setLastName("López");
        user.setEmail("diana12@gmail.com");
        user.setPasswordHash(passHash);
        user.setGender("Femenino");
        user.setUserRoleId(1);
        
        UserDao instance = new UserDao();
        boolean expResult = true;
        boolean result = instance.insert(user);
        assertEquals(expResult, result);
        
    }
    
}
