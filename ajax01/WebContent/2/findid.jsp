<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email=request.getParameter("email");
	String id=null;
	if(email!=null && email.equals("test@daum.net")){
		id="abcd***";
	}
	//응답을 xml로 하기
	response.setContentType("text/xml;charset=utf-8");
	PrintWriter pw=response.getWriter();
	pw.print("<?xml version='1.0' encoding='utf-8'?>");
	pw.print("<result>");
	if(id==null){
		pw.print("<code>fail</code>");
	}else{
		pw.print("<code>success</code>");
		pw.print("<id>"+id+"</id>");
	}
	pw.print("</result>");
	// http://localhost:8081/ajax01/2/findid.jsp?email=test@daum.net
%>