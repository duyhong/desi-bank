package com.desi.bank.data.util;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
 * @author ADMIN-2
 *
 */
public class Encrypter {
public Encrypter(){
		
	}
	
	public String encrypt(String word){
		String hash = "";
		try {
			MessageDigest sha = MessageDigest.getInstance("SHA-1");
			byte[] data  = word.getBytes();
			sha.update(data);
			byte[] msgDigest = sha.digest();
			hash = hexToString(msgDigest);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return hash;
	}


	private String hexToString(byte[] bytes) {
		StringBuffer buff = new StringBuffer();
		for (int i=0; i< bytes.length; i++) {
			int val = bytes[i];
			val = val & 0xff;  // remove higher bits, sign
			if (val<16) buff.append('0'); // leading 0
			buff.append(Integer.toString(val, 16));
		}
		return buff.toString();
	}	
}

