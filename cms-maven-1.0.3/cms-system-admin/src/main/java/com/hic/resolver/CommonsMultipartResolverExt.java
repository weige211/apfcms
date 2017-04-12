package com.hic.resolver;

import org.springframework.web.multipart.commons.CommonsMultipartResolver;

public class CommonsMultipartResolverExt extends CommonsMultipartResolver {
	@Override
	public boolean isMultipart(javax.servlet.http.HttpServletRequest request) {
		String uri = request.getRequestURI();
		System.out.println(uri);
		if (uri.indexOf("ueditor") > 0) { // �˴�����·����Ϊ�����д��controller·��
			System.out.println("commonsMultipartResolver ����");
			return false;
		}
		System.out.println("commonsMultipartResolver ����");
		return super.isMultipart(request);
	}
}
