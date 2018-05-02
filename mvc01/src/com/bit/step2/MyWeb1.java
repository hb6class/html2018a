package com.bit.step2;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyWeb1 implements Servlet{
	ServletConfig config;

	@Override
	public void init(ServletConfig config) throws ServletException {
		this.config=config;
		System.out.println("init() ȣ��");
	}
	
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1)
			throws ServletException, IOException {
		System.out.println("service() ȣ��");
	}

	@Override
	public void destroy() {
		System.out.println("destroy() ȣ��");
	}

	@Override
	public ServletConfig getServletConfig() {
		return config;
	}

	@Override
	public String getServletInfo() {
		return "getServletInfo()";
	}



}
