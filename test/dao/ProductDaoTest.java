/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Product;
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
public class ProductDaoTest {
    
    public ProductDaoTest() {
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
        Product product = null;
        ProductDao instance = new ProductDao();
        boolean expResult = true;
        boolean result = instance.update(product);
        assertEquals(expResult, result);
    }

    @Test
    public void testInsert() {
        System.out.println("insert");
        Product product = new Product();
        
        product.setSupplierId(1);
        product.setProductCategoryId(1);
        product.setName("Loción");
        product.setDescription("mdjaada");
        product.setPrice(10.000);
        
        
        ProductDao instance = new ProductDao();
        boolean expResult = true;
        boolean result = instance.insert(product);
        assertEquals(expResult, result);
    }
    
}
