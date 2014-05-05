package controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 3/31/14
 * Time: 9:54 AM
 * To change this template use File | Settings | File Templates.
 */
public class MD5 {

    public static String hash(String input){
        String md5 = null;
        if(null == input) return null;
        try{
            MessageDigest digest = MessageDigest.getInstance("MD5");
            digest.update(input.getBytes(), 0, input.length());
            md5 = new BigInteger(1, digest.digest()).toString(16);
        }catch (NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return md5;
    }
}
