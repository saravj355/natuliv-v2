package utils;

public class PasswordHash {
     public static String compute(String password) {
        return org.apache.commons.codec.digest.DigestUtils.sha1Hex(password);
    }

    public static boolean compare(String password, String currentPasswordHash) {
        return PasswordHash.compute(password).equals(currentPasswordHash);
    }
}
