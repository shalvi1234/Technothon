package com.psl.space.util;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Hasher {

	public String encrypt(String password) {

		String encryptedPassword=null;
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] passBytes = password.getBytes();
			md.reset();
			byte[] digested = md.digest(passBytes);
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < digested.length; i++) {
				sb.append(Integer.toHexString(0xff & digested[i]));
			}
			encryptedPassword=sb.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return encryptedPassword;
	}
}
