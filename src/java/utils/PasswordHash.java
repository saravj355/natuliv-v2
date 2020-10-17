/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import static org.apache.commons.codec.digest.DigestUtils.md5;

/**
 *
 * @author sarav
 */
public class PasswordHash {    
    public static String compute(String password){               
        return org.apache.commons.codec.digest.DigestUtils.sha1Hex( password ); 
    }
          
    public static boolean compare(String password, String currentPasswordHash){
        return PasswordHash.compute(password).equals(currentPasswordHash);
    }           
    
}
