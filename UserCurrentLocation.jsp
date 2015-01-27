<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Current latitude longitude of User --%>
<%!
    String current_latitude="";
    String current_longitude="";
    

%>
<%
    current_latitude=request.getParameter("user_latitude");
    current_longitude=request.getParameter("user_longitude");
    
    
     
    
%>
