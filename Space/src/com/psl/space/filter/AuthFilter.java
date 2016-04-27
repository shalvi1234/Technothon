package com.psl.space.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.psl.space.entity.RoleType;

public class AuthFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("inside destroy method");

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest hreq = (HttpServletRequest) req;
		HttpServletResponse hres = (HttpServletResponse) res;
		System.out.println(hreq.getServletPath());
		String servletPath = hreq.getServletPath();
		String contextPath = hreq.getContextPath();
		System.out.println("Filter invoked");
		HttpSession session = hreq.getSession(false);

		if (servletPath.startsWith("/u")/* &&session==null */) {
			if (session == null) {
				hres.sendError(HttpServletResponse.SC_UNAUTHORIZED);

				return;
			} else {
				if (session.getAttribute("actorId") == null) {
					hres.sendError(HttpServletResponse.SC_UNAUTHORIZED);

					return;
				}

			}

		}

		try {
			if (servletPath.startsWith("/e")) {
				if(session==null){
					hres.sendError(HttpServletResponse.SC_UNAUTHORIZED);

					return;
				}
				if(session.getAttribute("role")!="EXPERT"){
					hres.sendError(HttpServletResponse.SC_UNAUTHORIZED);

					return;
				}
				
			}
		} catch (Exception e) {

			hres.sendError(HttpServletResponse.SC_UNAUTHORIZED);
		}

		chain.doFilter(req, res);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter init");
	}

}
