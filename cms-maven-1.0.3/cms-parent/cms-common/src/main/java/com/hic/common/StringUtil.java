package com.hic.common;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.UUID;

public class StringUtil {
	/**
	 * 2. * ���ַ�md5���� 3. * 4. * @param str 5. * @return 6.
	 */
	public static String getMD5(String str) {
		try {
			// ���һ��MD5���ܼ���ժҪ
			MessageDigest md = MessageDigest.getInstance("MD5");
			// ����md5����
			md.update(str.getBytes());
			// digest()���ȷ������md5 hashֵ������ֵΪ8Ϊ�ַ���Ϊmd5 hashֵ��16λ��hexֵ��ʵ���Ͼ���8λ���ַ�
			// BigInteger������8λ���ַ�ת����16λhexֵ�����ַ�����ʾ���õ��ַ���ʽ��hashֵ
			return new BigInteger(1, md.digest()).toString(16);
		} catch (Exception e) {
			// throw new SpeedException("MD5���ܳ��ִ���");
			return null;
		}
	}

	public static String getGuid() {
		// ���� GUID ����
		UUID uuid = UUID.randomUUID();
		return uuid.toString().toUpperCase().replace("-", "");

	}
}
