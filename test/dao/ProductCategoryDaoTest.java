/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.ProductCategory;
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
public class ProductCategoryDaoTest {
    
    public ProductCategoryDaoTest() {
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
        ProductCategory productCategory = null;
        ProductCategoryDao instance = new ProductCategoryDao();
        boolean expResult = false;
        boolean result = instance.update(productCategory);
        assertEquals(expResult, result);
    }

    @Test
    public void testInsertProductCategory() {
        System.out.println("insertProductCategory");
        ProductCategory productCategory = new ProductCategory();
        
        productCategory.setName("Cabello");
        
        
        ProductCategoryDao instance = new ProductCategoryDao();
        boolean expResult = true;
        boolean result = instance.insert(productCategory);
        assertEquals(expResult, result);
    }
    
}
