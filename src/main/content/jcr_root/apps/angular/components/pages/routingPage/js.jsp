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

    Resource resAppTitle = currentPage.getContentResource("appTitle");

    Node nodeAppTitle = resAppTitle.adaptTo(Node.class);
    NodeIterator nodes = nodeAppTitle.getNodes();


%>
    <c:set var="nodes" value="<%=nodes%>"/>
    <c:forEach items="${nodes}" var="node">
        <c:set var="title" value="<%= node.getProperty("title") %>"/>
        <c:out value="${title}"/>
    </c:forEach>







