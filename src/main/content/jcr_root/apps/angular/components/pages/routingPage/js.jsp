<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<%@page import="java.util.Iterator"%>
<%@page import="com.day.cq.wcm.api.Page"%>


<cq:setContentBundle/>

<%
response.setContentType("application/x-javascript");
response.setCharacterEncoding("utf-8");

StringBuffer buf = new StringBuffer();

Iterator<Page> children = currentPage.listChildren();

while(children.hasNext()){
    Page child = children.next();


}
%>




