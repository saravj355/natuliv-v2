/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Supplier;
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
public class SupplierDaoTest {
    
    public SupplierDaoTest() {
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
    public void testUpdate() {
        System.out.println("update");
        Supplier supplier = null;
        SupplierDao instance = new SupplierDao();
        boolean expResult = false;
        boolean result = instance.update(supplier);
        assertEquals(expResult, result);
        fail("The test case is a prototype.");
    }

    @Test
    public void testInsert() {
        System.out.println("insert");
        Supplier supplier = new Supplier();
        
        supplier.setName("Victoria Secret");
        supplier.setAddress("Carrera 1");
        supplier.setContactNumber("555-217-172");;
        
        SupplierDao instance = new SupplierDao();
        boolean expResult = true;
        boolean result = instance.insert(supplier);
        assertEquals(expResult, result);
    }
    
}
