/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zot;

import java.util.Random;

/**
 *
 * @author Sabari
 */
public class CEncrypt {

 //   static final String key; // The key for 'encrypting' and 'decrypting'.

    public static String encryptString(String str,String key) {
        StringBuffer sb = new StringBuffer(str);

        int lenStr = str.length();
        int lenKey = key.length();

        //
        // For each character in our string, encrypt it...
        for (int i = 0, j = 0; i < lenStr; i++, j++) {
            if (j >= lenKey) {
                j = 0;  // Wrap 'round to beginning of key string.
            }
            //
            // XOR the chars together. Must cast back to char to avoid compile error. 
            //
            sb.setCharAt(i, (char) (str.charAt(i) ^ key.charAt(j)));
        }

        return sb.toString();
    }

    public static String decryptString(String str,String key) {
        //
        // To 'decrypt' the string, simply apply the same technique.
        return encryptString(str,key);
    }

    public static void main(String[] args) throws Exception {
//        String s1 = "Somebody";
//
//        String s2 = encryptString(s1);
//
//        String s3 = decryptString(s2);
//
//        System.out.println("Original string:  " + s1);
//
//        System.out.println("Encrypted string: " + s2);
//
//        System.out.println("Decrypted string: " + s3);
        
        generatePin();
    }

    public static int generatePin() throws Exception {
        Random generator = new Random();
        generator.setSeed(System.currentTimeMillis());

        int num = generator.nextInt(99999) + 99999;
        if (num < 100000 || num > 999999) {
            num = generator.nextInt(99999) + 99999;
            if (num < 100000 || num > 999999) {
                throw new Exception("Unable to generate PIN at this time..");
            }
        }
        System.out.println(""+num);
        return num;
    }
}
