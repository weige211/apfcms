package com.hic.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;

		String url = request.getRequestURI();
		//System.out.println("url:"+url);
		// �жϻ�ȡ��·����Ϊ���Ҳ��Ƿ��ʵ�¼ҳ���ִ�е�¼����ʱ��ת
		if (url != null && !url.equals("")
				&& (url.indexOf("Login") < 0 && url.indexOf("login") < 0)) {
			HttpSession session = request.getSession(true);
			Object obj = session.getAttribute("user");
			if (obj == null) {
				response.sendRedirect(request.getContextPath()
						+ "/Login.jsp");
				return;
			}
		}
		arg2.doFilter(arg0, arg1);
		return;

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
