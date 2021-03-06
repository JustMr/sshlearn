package com.aidaL.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserFilter implements Filter {

	private Set<String> paths = new HashSet<String>();
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletResponse response = (HttpServletResponse) resp;
		HttpServletRequest request = (HttpServletRequest) req;
		
		//获取访问链接
		String path = request.getServletPath();
		Integer uid = (Integer) request.getSession().getAttribute("cusId");
		
		if (uid!=null) {
			//已登录，允许所有路径访问
			chain.doFilter(request, response);
		} else {
			if (paths.contains(path)||path.indexOf("/css/")!=-1||path.indexOf("/js/")!=-1||path.indexOf("/iconfont/")!=-1
					||path.indexOf("/images/")!=-1) {
				chain.doFilter(request, response);
			}else {
				response.sendRedirect("/AidaShop/login.html");
			}
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		paths.add("/login.html");
		paths.add("/home.jsp");
		paths.add("/login");
		paths.add("/detail.jsp");
		paths.add("/register.jsp");
		paths.add("/shoplaw.jsp");
		paths.add("/page/detail/detail.jsp");
	}

}
