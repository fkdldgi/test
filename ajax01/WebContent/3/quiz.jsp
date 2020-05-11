<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	int op=Integer.parseInt(request.getParameter("op"));
	int calc=0;
	switch(op){
	case 1: calc=num1+num2; break;
	case 2: calc=num1-num2; break;
	case 3: calc=num1*num2; break;
	case 4: calc=num1/num2; break;
	}
	response.setContentType("text/xml;charset=utf-8");
	PrintWriter pw=response.getWriter();
	pw.print("<?xml version='1.0' encoding='utf-8'?>");
	pw.print("<result>");
	pw.print("<calc>"+calc+"</calc>");
	pw.print("</result>");
%>